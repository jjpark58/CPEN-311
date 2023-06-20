`default_nettype none
module loop_3 #(parameter MESSAGE_LENGTH = 32) (
  input start,
  output finish,
  input clk,
  input reset_n,
  output invalid_key,
  output [7:0] address,
  output [7:0] data,
  output wren,
  input [7:0] q,
  output [7:0] address_d,
  output [7:0] data_d,
  output wren_d,
  output [7:0] address_m,
  input [7:0] q_m // encrypted_input
);

//                           FEDC_BA98_7654_3210
localparam START       = 16'b0000_0000_0000_0000;
localparam INCREMENT_I = 16'b0001_0000_0000_0010;
localparam READ_S_I    = 16'b0010_0000_0000_0100;
localparam STORE_S_I   = 16'b0011_0000_0000_1000;
localparam UPDATE_J    = 16'b0100_0000_0001_0000;
localparam READ_S_J    = 16'b0101_0000_0010_0000;
localparam STORE_S_J   = 16'b0110_0000_0100_0000;
localparam WRITE_S_J   = 16'b0111_0000_0000_0001;
localparam ADDRESS_I   = 16'b1000_0000_1000_0000;
localparam WRITE_S_I   = 16'b1001_0000_0000_0001;
localparam READ_F      = 16'b1010_0001_0000_0000; // also read encrypted_input[k]
localparam WRITE_OUT   = 16'b1011_0010_0000_0000;
localparam INCREMENT_K = 16'b1100_0100_0000_0000;
localparam FINISH_LOOP = 16'b1101_1000_0000_0000;
localparam HALT        = 16'b1110_0000_0000_0000;

logic [15:0] state;

logic start_reg;
logic [1:0] delay;
logic write_finish;

logic [7:0] index_i;
logic [7:0] index_j;
logic [4:0] index_k;
logic [7:0] s_i;
logic [7:0] s_j;
logic ren_s_i;
logic ren_s_j;
logic ren_f;
logic s_i_reg;
logic s_j_reg;
logic addr_i;
logic index_i_reg;
logic index_j_reg;
logic index_k_reg;
logic [7:0] f;

assign data_d = (q ^ q_m);
assign f = s_i + s_j;
assign write_finish = q == data;

logic decrypt_finished;
assign decrypt_finished = index_i == MESSAGE_LENGTH[7:0];

assign wren        = state[0];
assign index_i_reg = state[1];
assign ren_s_i     = state[2];
assign s_i_reg     = state[3];
assign index_j_reg = state[4];
assign ren_s_j     = state[5];
assign s_j_reg     = state[6];
assign addr_i      = state[7];
assign ren_f       = state[8];
assign wren_d      = state[9];
assign index_k_reg = state[10];
assign finish      = state[11];

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
      START       : state <= INCREMENT_I;
      INCREMENT_I : state <= READ_S_I;
      READ_S_I    : if (delay == 2'b10) state <= STORE_S_I;
                    else state <= READ_S_I;
      STORE_S_I   : state <= UPDATE_J;
      UPDATE_J    : state <= READ_S_J;
      READ_S_J    : if (delay == 2'b10) state <= STORE_S_J;
                    else state <= READ_S_J;
      STORE_S_J   : state <= WRITE_S_J;
      WRITE_S_J   : if (write_finish) state <= ADDRESS_I;
                    else state <= WRITE_S_J;
      ADDRESS_I   : state <= WRITE_S_I;
      WRITE_S_I   : if (write_finish) state <= READ_F;
                    else state <= WRITE_S_I;
      READ_F      : if (delay == 2'b10) state <= WRITE_OUT;
                    else state <= READ_F;
      WRITE_OUT   : state <= INCREMENT_K;
      INCREMENT_K : if (invalid_key) state <= HALT;
                    else if (!decrypt_finished) state <= INCREMENT_I;
                    else state <= FINISH_LOOP;
      FINISH_LOOP : state <= FINISH_LOOP;
      HALT        : state <= HALT;
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
    else if (ren_f) address <= f;
  end
end

always_comb
  case (address)
    index_i : data = s_j;
    index_j : data = s_i;
    default : data = 8'h00;
  endcase

always_ff @( posedge wren_d or negedge reset_n ) begin
  if (~reset_n) begin
    invalid_key <= 1'b0;
  end else begin
    invalid_key <= !(data_d == 8'd32 || (data_d >= 8'd97 && data_d <= 8'd122));
  end
end

always_ff @( posedge ren_f or negedge reset_n ) begin
  if (~reset_n) begin
    address_m <= 8'h00;
    address_d <= 8'h00;
  end else begin
    address_m <= index_k;
    address_d <= index_k;
  end
end

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
    index_j <= index_j + s_i;
  end
end

always_ff @( posedge index_k_reg or negedge reset_n ) begin
  if (~reset_n) begin
    index_k <= 5'h00;
  end else begin
    index_k <= index_k + 5'h01;
  end
end

always_ff @( posedge clk or negedge reset_n ) begin
  if (~reset_n) begin
    delay <= 2'b00;
  end else if (ren_s_i | ren_s_j | ren_f) begin
    delay <= delay + 2'b01;
  end else begin
    delay <= 2'b00;
  end
end

endmodule
`default_nettype wire