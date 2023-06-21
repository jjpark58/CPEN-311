`default_nettype none
module loop_2 #(parameter KEY_LENGTH = 3) (
  input start,
  output finish,
  input clk,
  input reset_n,
  input [8*KEY_LENGTH-1:0] secret_key,
  output [7:0] address,
  output [7:0] data,
  output wren,
  input [7:0] q
);

//                           CBA9_87654_3210
localparam START       = 13'b0000_00000_0000;
localparam READ_S_I    = 13'b0001_00000_0010;
localparam STORE_S_I   = 13'b0010_00000_0100;
localparam UPDATE_J    = 13'b0011_00000_1000;
localparam READ_S_J    = 13'b0100_00001_0000;
localparam STORE_S_J   = 13'b0101_00010_0000;
localparam WRITE_S_J   = 13'b0110_00000_0001;
localparam ADDRESS_I   = 13'b0111_00100_0000;
localparam WRITE_S_I   = 13'b1000_00000_0001;
localparam INCREMENT_I = 13'b1001_01000_0000;
localparam FINISH_LOOP = 13'b1010_10000_0000;

logic [12:0] state;

logic ren_s_i;
logic ren_s_j;
logic s_i_reg;
logic s_j_reg;
logic addr_i;
logic index_i_reg;
logic index_j_reg;

assign wren        = state[0];
assign ren_s_i     = state[1];
assign s_i_reg     = state[2];
assign index_j_reg = state[3];
assign ren_s_j     = state[4];
assign s_j_reg     = state[5];
assign addr_i      = state[6];
assign index_i_reg = state[7];
assign finish      = state[8];

logic start_reg;
logic [1:0] delay;
logic write_finish;

logic [7:0] s_i; // holds s[i] value
logic [7:0] s_j; // holds s[j] value
logic [7:0] index_i;
logic [7:0] index_j;

logic [7:0] i_mod_keylength;
logic all_swap_finished;
assign i_mod_keylength = index_i % KEY_LENGTH[7:0];
assign all_swap_finished = &address; // all swap complete if address is 8'hFF
assign write_finish = q == data;  // signal that write finished

always_ff @( posedge start or negedge reset_n ) begin
  if (~reset_n) begin
    start_reg <= 1'b0;
  end else begin
    start_reg <= 1'b1;
  end
end

always_ff @( posedge clk or negedge reset_n ) begin
  if (~reset_n) begin
    state <= START;
  end else if (start_reg & ~finish) begin // run and continue on start and until finish
    case (state)
      START       : state <= READ_S_I;
      READ_S_I    : if (delay == 2'b10) state <= STORE_S_I; // read s[i]
                    else state <= READ_S_I;
      STORE_S_I   : state <= UPDATE_J; // store value of s[i]
      UPDATE_J    : if (delay == 2'b10) state <= READ_S_J; // calculate index j
                    else state <= UPDATE_J;
      READ_S_J    : if (delay == 2'b10) state <= STORE_S_J; // read s[j]
                    else state <= READ_S_J;
      STORE_S_J   : state <= WRITE_S_J; // store value of s[j]
      WRITE_S_J   : if (write_finish) state <= ADDRESS_I; // write s[j] = s[i]
                    else state <= WRITE_S_J;
      ADDRESS_I   : state <= WRITE_S_I; // set address to s[i]
      WRITE_S_I   : if (write_finish) state <= INCREMENT_I; // write s[i] = s[j]
                    else state <= WRITE_S_I;
      INCREMENT_I : if (!all_swap_finished) state <= READ_S_I; // increment index i
                    else state <= FINISH_LOOP;
      FINISH_LOOP : state <= FINISH_LOOP;
      default : state <= START;
    endcase
  end
end

always_ff @( posedge s_i_reg ) begin
  s_i <= q; // store s[i] value
end

always_ff @( posedge s_j_reg ) begin
  s_j <= q; // store s[j] value
end

always_ff @( posedge clk or negedge reset_n ) begin
  if (~reset_n) begin
    address <= 8'h00;
  end else begin
    if (ren_s_i) address <= index_i; // reading s[i]
    else if (ren_s_j) address <= index_j; // reading s[j]
    else if (addr_i) address <= index_i; // set address to s[i] for write
  end
end

// only ever use data during write for swap
always_comb
  case (address)
    index_i : data = s_j; // when writing to s[i], data should be value of s[j]
    index_j : data = s_i; // when writing to s[j], data should be value of s[i]
    default : data = 8'h00;
  endcase

// new index_i
always_ff @( posedge index_i_reg or negedge reset_n ) begin
  if (~reset_n) begin
    index_i <= 8'h00;
  end else begin
    index_i <= index_i + 8'h01;
  end
end

// new index_j
always_ff @( posedge index_j_reg or negedge reset_n ) begin
  if (~reset_n) begin
    index_j <= 8'h00;
  end else begin
    index_j <= index_j + s_i + ((i_mod_keylength[1]) ? secret_key[7:0] : ((i_mod_keylength[0]) ? secret_key[15:8] : secret_key[23:16]));
  end
end

// delay counter for reading from memory
always_ff @( posedge clk or negedge reset_n ) begin
  if (~reset_n) begin
    delay <= 2'b00;
  end else if (ren_s_i | ren_s_j | index_j_reg) begin
    delay <= delay + 2'b01;
  end else begin
    delay <= 2'b00;
  end
end

endmodule
`default_nettype wire
