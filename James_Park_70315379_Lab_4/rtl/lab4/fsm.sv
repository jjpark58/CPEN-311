`default_nettype none
module fsm (
  input clk,
  input reset_n,
  input [23:0] secret_key,
  output logic wen,
  input [7:0] q,
  output logic [7:0] data,
  output logic [7:0] address,
  output logic [7:0] address_d,
  output logic [7:0] data_d,
  output logic wren_d,
  input [7:0] q_m,
  output logic [7:0] address_m,
  output logic [7:0] debug
);

logic incr;
logic s_memory_filled;
logic write_finish;

logic [11:0] state;

logic [7:0] index_i;
logic [7:0] index_j;
logic [7:0] s_i;
logic [7:0] s_j;
logic ren_s_i;
logic ren_s_j;
logic s_i_reg;
logic s_j_reg;
logic index_j_reg;
logic addr_i;
logic incr2;
logic [7:0] i_mod_keylength;

localparam [3:0] KEY_LENGTH = 4'h3;

                            //  1098_765432_10
localparam START          = 12'b0000_000000_00; // loop 1
localparam WRITE          = 12'b0001_000000_01;
localparam INCREMENT      = 12'b0010_000000_10;
localparam FINISH_LOOP_1  = 12'b0011_000000_00;
localparam READ_S_I       = 12'b0100_000001_00; // address = i, data = ?, q = ?
localparam STORE_S_I      = 12'b0101_000010_00; // address = i, data = s_i, 
localparam UPDATE_J       = 12'b0110_000100_00; // address = index_j updated
localparam READ_S_J       = 12'b0111_001000_00; // address = j, data = s[i], q = ?
localparam STORE_S_J      = 12'b1000_010000_00; // address = j, data = s[i], q = s[j]
localparam WRITE_S_J      = 12'b1001_000000_01; // address = j, data = s[i], wen
localparam ADDRESS_I      = 12'b1010_100000_00; // address = i, data = s[j]
localparam WRITE_S_I      = 12'b1011_000000_01; // address = i, data = s[j], wen

// read s[i]
// store s[i] to s_i
// new j value is j + temp + secret_key[i mod keylength] // 1clk
// read s[j] to temp2 // 1clk
// write temp to s[j] // 1clk
// write temp2 to s[i] // 1clk

assign write_finish = q == data;
assign s_memory_filled = &q;

assign wen = state[0];
assign incr = state[1];
assign ren_s_i = state[2];
assign s_i_reg = state[3];
assign index_j_reg = state[4];
assign ren_s_j = state[5];
assign s_j_reg = state[6];
assign addr_i = state[7];
assign incr2 = 0;

assign i_mod_keylength = index_i % KEY_LENGTH;

assign debug = {{1'b0}, state};

always_ff @( posedge clk or negedge reset_n ) begin
  if (~reset_n) begin
    state <= START;
  end else begin
    case (state)
      START         : state <= WRITE;
      WRITE         : if (write_finish) state <= INCREMENT;
                      else state <= WRITE;
      INCREMENT     : if (!s_memory_filled) state <= START;
                      else state <= FINISH_LOOP_1;
      FINISH_LOOP_1 : state <= READ_S_I;
      READ_S_I      : state <= STORE_S_I; // read s[i]
      STORE_S_I     : state <= UPDATE_J; // store s[i]
      UPDATE_J      : state <= READ_S_J; // get index j
      READ_S_J      : state <= STORE_S_J; // read s[j]
      STORE_S_J     : state <= WRITE_S_J; // store s[j]
      WRITE_S_J     : state <=            // s[j] = stored value s[i]
      default       : state <= START;
    endcase
  end
end

// always_ff @( posedge clk or negedge reset_n ) begin
//   if (~reset_n) begin
//     index_i <= 8'h00;
//     index_j <= 8'h00;
//   end else if (incr2) begin
//     index_i <= index_i + 8'h01;
//     index_j <= index_j + 8'h01;
//   end
// end

always_ff @( posedge clk or negedge reset_n ) begin
  if (~reset_n) begin
    address <= 8'h00;
    data <= 8'h00;
  end else begin
    if (incr) {address, data} <= {address + 8'h01, data + 8'h01};
    else if (ren_s_i) {address, data} <= {index_i, data};
    else if (ren_s_j) {address, data} <= {index_j, s_i};
    else if (addr_i) {address, data} <= {index_i, s_j};
    
    else {address, data} <= {address, data};
  end
end

always_ff @( posedge index_j_reg ) begin
  index_j <= index_j + s_i + secret_key[23-8*i_mod_keylength:16-8*i_mod_keylength];
end

always_ff @( posedge s_i_reg ) begin
  s_i <= q;
end

always_ff @( posedge s_j_reg ) begin
  s_j <= q;
end

endmodule
`default_nettype wire