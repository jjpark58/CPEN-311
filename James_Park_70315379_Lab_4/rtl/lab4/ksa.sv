`default_nettype none
module ksa (
  input CLOCK_50,  // Clock pin
  input [3:0] KEY,  // push button switches
  input [9:0] SW,  // slider switches
  output [9:0] LEDR,  // red lights
  output [6:0] HEX0,
  output [6:0] HEX1,
  output [6:0] HEX2,
  output [6:0] HEX3,
  output [6:0] HEX4,
  output [6:0] HEX5
);

logic clk, reset_n;

assign clk = CLOCK_50;
assign reset_n = KEY[3];

logic [6:0] ssOut;
logic [3:0] nIn;

localparam H0 = 9'b000_000001;
localparam H1 = 9'b001_000010;
localparam H2 = 9'b010_000100;
localparam H3 = 9'b011_001000;
localparam H4 = 9'b100_010000;
localparam H5 = 9'b101_100000;

logic [6:0] num0;
logic [6:0] num1;
logic [6:0] num2;
logic [6:0] num3;
logic [6:0] num4;
logic [6:0] num5;

logic h0_reg;
logic h1_reg;
logic h2_reg;
logic h3_reg;
logic h4_reg;
logic h5_reg;

logic [8:0] state;

assign h0_reg = state[0];
assign h1_reg = state[1];
assign h2_reg = state[2];
assign h3_reg = state[3];
assign h4_reg = state[4];
assign h5_reg = state[5];

SevenSegmentDisplayDecoder SevenSegmentDisplayDecoder_inst_1 (
  .ssOut(ssOut),
  .nIn(nIn)
);

logic match_found;
logic all_keys_checked;
logic request_new_key;
logic [23:0] secret_key;

logic [7:0] address;
logic [7:0] data;
logic wren;
logic [7:0] q_out;
logic [7:0] address_m;
logic [7:0] q_m;
logic [7:0] address_d;
logic [7:0] data_d;
logic wren_d;
logic [7:0] q_d;

always_ff @( negedge h0_reg ) begin
  num0 <= ssOut;
end

always_ff @( negedge h1_reg ) begin
  num1 <= ssOut;
end

always_ff @( negedge h2_reg ) begin
  num2 <= ssOut;
end

always_ff @( negedge h3_reg ) begin
  num3 <= ssOut;
end

always_ff @( negedge h4_reg ) begin
  num4 <= ssOut;
end

always_ff @( negedge h5_reg ) begin
  num5 <= ssOut;
end

always_comb
  case (state)
    H0 : nIn = secret_key[3:0];
    H1 : nIn = secret_key[7:4];
    H2 : nIn = secret_key[11:8];
    H3 : nIn = secret_key[15:12];
    H4 : nIn = secret_key[19:16];
    H5 : nIn = secret_key[23:20];
    default : nIn = 4'h0;
  endcase

assign HEX0 = num0;
assign HEX1 = num1;
assign HEX2 = num2;
assign HEX3 = num3;
assign HEX4 = num4;
assign HEX5 = num5;
assign LEDR[0] = all_keys_checked & !match_found;
assign LEDR[1] = match_found;

always_ff @( posedge clk or negedge reset_n) begin
  if (~reset_n) begin
    state <= H0;
  end else begin
    case (state)
      H0 : state <= H1;
      H1 : state <= H2;
      H2 : state <= H3;
      H3 : state <= H4;
      H4 : state <= H5;
      H5 : state <= H0;
      default: state <= H0;
    endcase
  end
end

always_ff @( posedge request_new_key or negedge reset_n ) begin
  if (~reset_n) begin
    secret_key <= 24'h000000;
  end else begin
    secret_key <= secret_key + 24'h000001;
  end
end

fsm #(24'hFFFFFF) fsm_inst (
  .clk(clk),
  .reset_n(reset_n),
  .match_found(match_found),
  .all_keys_checked(all_keys_checked),
  .request_new_key(request_new_key),
  .secret_key(secret_key),
  .address(address),
  .data(data),
  .wren(wren),
  .q(q_out),
  .address_d(address_d),
  .data_d(data_d),
  .wren_d(wren_d),
  .q_d(q_d),
  .address_m(address_m),
  .q_m(q_m)
);

s_memory s_memory_inst (
	.address(address),
	.clock(clk),
	.data(data),
	.wren(wren),
	.q(q_out)
);

m_memory m_memory_inst (
	.address(address_m),
	.clock(clk),
	.q(q_m)
);

d_memory d_memory_inst (
  .address(address_d),
	.clock(clk),
	.data(data_d),
	.wren(wren_d),
	.q(q_d)
);

endmodule
`default_nettype wire
