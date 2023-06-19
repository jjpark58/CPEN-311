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
logic [1:0] read_counter;

logic [7:0] s_i;
logic [7:0] s_j;
logic [7:0] index_i;
logic [7:0] index_j;

logic [7:0] i_mod_keylength;
logic all_swap_finished;
assign i_mod_keylength = index_i % KEY_LENGTH[7:0];
assign all_swap_finished = &address;

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
  end else if (start_reg & ~finish) begin
    case (state)
      START       : state <= READ_S_I;
      READ_S_I    : if (read_counter == 2'b10) state <= STORE_S_I;
                    else state <= READ_S_I;
      STORE_S_I   : state <= UPDATE_J;
      UPDATE_J    : state <= READ_S_J;
      READ_S_J    : if (read_counter == 2'b10) state <= STORE_S_J;
                    else state <= READ_S_J;
      STORE_S_J   : state <= WRITE_S_J;
      WRITE_S_J   : state <= ADDRESS_I;
      ADDRESS_I   : state <= WRITE_S_I;
      WRITE_S_I   : state <= INCREMENT_I;
      INCREMENT_I : if (!all_swap_finished) state <= READ_S_I;
                    else state <= FINISH_LOOP;
      FINISH_LOOP : state <= FINISH_LOOP;
      default : state <= START;
    endcase
  end
end

always_ff @( posedge s_i_reg ) begin
  s_i <= q;
end

always_ff @( posedge s_j_reg ) begin
  s_j <= q;
end

always_ff @( posedge clk or negedge reset_n ) begin
  if (~reset_n) begin
    address <= 8'h00;
  end else begin
    if (ren_s_i) address <= index_i;
    else if (ren_s_j) address <= index_j;
    else if (addr_i) address <= index_i;
  end
end

always_comb
  case (address)
    index_i : data = s_j;
    index_j : data = s_i;
    default : data = 8'hzz;
  endcase

always_ff @( posedge index_i_reg or negedge reset_n ) begin
  if (~reset_n) begin
    index_i <= 8'h00;
  end else begin
    index_i <= index_i + 8'h01;
  end
end

always_ff @( posedge index_j_reg or negedge reset_n ) begin
  if (~reset_n) begin
    index_j <= 8'h00;
  end else begin
    index_j <= index_j + s_i + ((i_mod_keylength[1]) ? secret_key[7:0] : ((i_mod_keylength[0]) ? secret_key[15:8] : secret_key[23:16]));
  end
end

always_ff @( posedge clk or negedge reset_n ) begin
  if (~reset_n) begin
    read_counter <= 2'b00;
  end else if (ren_s_i | ren_s_j) begin
    read_counter <= read_counter + 2'b01;
  end else begin
    read_counter <= 2'b00;
  end
end

endmodule
`default_nettype wire
