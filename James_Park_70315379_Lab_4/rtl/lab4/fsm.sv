`default_nettype none
module fsm (
  input clk,
  input reset_n,
  input [23:0] secret_key,
  output wen,
  input [7:0] q,
  output [7:0] data,
  output [7:0] address,
  output [7:0] address_d,
  output [7:0] data_d,
  output wren_d,
  input [7:0] q_m,
  output [7:0] address_m,
  output [7:0] debug
);

logic incr;
logic s_memory_filled = 0;
logic write_finish;

logic [6:0] state;

logic [7:0] index_i;
logic [7:0] index_j;
logic [7:0] s_i;
logic [7:0] s_j;
logic read_s_i;
logic s_i_reg;
logic index_j_reg;
logic incr2;
logic [7:0] i_mod_keylength;

localparam [3:0] KEY_LENGTH = 4'h3;

localparam START          = 10'b000_00000_00; // loop 1
localparam WRITE          = 10'b001_00000_01;
localparam INCREMENT      = 10'b010_00000_10;
localparam FINISH_LOOP_1  = 10'b011_00000_00;
// localparam START_LOOP_2   = 10'b100_00001_00;
localparam READ_S_I       = 10'b101_00001_00; //loop 2
localparam STORE_S_I      = 10'b110_00010_00;
localparam UPDATE_J       = 10'b111_00100_00;
localparam STORE_S_J      = 10'b111_00100_00;

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
assign read_s_i = state[2];
assign s_i_reg = state[3];
assign index_j_reg = state[4];
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
      READ_S_I      : state <= STORE_S_I;
      STORE_S_I     : state <= UPDATE_J;
      UPDATE_J      : state <= STORE_S_J;
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
    else if (read_s_i) {address, data} <= {index_i, data};
    else {address, data} <= {address, data};
  end
end

always_ff @( posedge index_j_reg ) begin
  index_j <= index_j + s_i + secret_key[23-8*i_mod_keylength:16-8*i_mod_keylength];
end

always_ff @( posedge s_i_reg ) begin
  s_i <= q;
end

endmodule
`default_nettype wire