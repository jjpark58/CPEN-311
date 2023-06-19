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


logic [6:0] ssOut;
logic [3:0] nIn;

//   Component declaration
SevenSegmentDisplayDecoder SevenSegmentDisplayDecoder_inst (
  .ssOut(ssOut),
  .nIn(nIn)
);

logic clk, reset_n;

assign clk = CLOCK_50;
assign reset_n = KEY[3];

logic [23:0] secret_key;
assign secret_key = {{13{1'b0}}, SW};

logic [7:0] address;
logic [7:0] data;
logic wren;
logic [7:0] q_out;
logic [7:0] address_m;
logic [7:0] q_m;
logic [7:0] address_d;
logic [7:0] data_d;
logic wren_d;

logic [7:0] debug;

assign LEDR[7:0] = debug;

fsm fsm_inst (
  .clk(clk),
  .reset_n(reset_n),
  .secret_key(secret_key),
  .address(address),
  .data(data),
  .wren(wren),
  .q(q_out),
  .address_d(address_d),
  .data_d(data_d),
  .wren_d(wren_d),
  .address_m(address_m),
  .q_m(q_m),
  .debug(debug)
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
	.q()
);

endmodule
`default_nettype wire
