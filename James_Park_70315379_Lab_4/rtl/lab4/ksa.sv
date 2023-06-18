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

logic [7:0] address;
logic [7:0] data;
logic wren;
logic [7:0] q_out;

logic [7:0] debug;

assign LEDR[7:0] = debug;

fsm fsm_inst (
  .clk(clk),
  .reset_n(reset_n),
  .wen(wren),
  .q(q_out),
  .data(data),
  .address(address),
  .address_d(),
  .data_d(),
  .wren_d(),
  .q_m(),
  .address_m(),
  .debug(debug)
);

s_memory s_memory_inst (
	.address(address),
	.clock(CLOCK_50),
	.data(data),
	.wren(wren),
	.q(q_out)
);

endmodule
`default_nettype wire
