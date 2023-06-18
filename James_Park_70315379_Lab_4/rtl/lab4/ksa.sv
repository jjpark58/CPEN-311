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

logic [7:0] LED;
assign LEDR[7:0] = address[7:0];

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

logic device_start = 0;
logic s_memory_filled = 0;
logic [7:0] address;
logic [7:0] data;
logic [7:0] q_out;
logic wren;
logic [4:0] state;

localparam FIRST  = 5'b000_00; // initialize
localparam SECOND = 5'b001_00; // address
localparam THIRD  = 5'b010_00; // 
localparam FOURTH = 5'b011_00;
localparam FIFTH  = 5'b100_00;


always_ff @( posedge CLOCK_50 ) begin
  case (state)
    FIRST   : {state, address, data, wren} <= {SECOND, 8'h00, 8'h00, 1'b0};
    SECOND  : {state, address, data, wren} <= {THIRD,  address, data, 1'b1};
    THIRD   : {state, address, data, wren} <= {FOURTH,  address, data, 1'b1};
    FOURTH  : {state, address, data, wren} <= {FIFTH, address, data, 1'b0};
    FIFTH   : {state, address, data, wren} <= {SECOND,  address + 8'h01, data + 8'h01, 1'b0};
    default : {state, address, data, wren} <= {FIRST, 8'h00, 8'h00, 1'b0};
  endcase
  
  // if (s_memory_filled == 0) begin
  //   if (device_start == 0) begin
  //     address <= 9'h0;
  //     data <= 8'h0;
  //     wren <= 1'b0;
  //     device_start <= ~device_start;
  //   end else begin
  //     case (write_state)
  //       2'b00: {write_state, wren, address, data} <= {2'b01, 1'b0, address, data};
  //       2'b01: {write_state, wren, address, data} <= {2'b10, 1'b1, address, data};
  //       2'b10: {write_state, wren, address, data} <= {2'b11, 1'b1, address, data};
  //       2'b11: {write_state, wren, address, data} <= {2'b00, 1'b0, address + 9'h01, data + 1};
  //       default: {write_state, wren, address, data} <= {write_state, 1'b0, address, data};
  //     endcase
  //   end
  // end
end

s_memory s_memory_inst (
	.address(address[7:0]),
	.clock(CLOCK_50),
	.data(data),
	.wren(wren),
	.q(q_out)
);

endmodule
`default_nettype wire
