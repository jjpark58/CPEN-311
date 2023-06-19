`default_nettype none
module fsm (
  input clk,
  input reset_n,
  input [23:0] secret_key,
  output [7:0] address,
  output [7:0] data,
  output wren,
  input [7:0] q,
  output [7:0] address_d,
  output [7:0] data_d,
  output wren_d,
  output [7:0] address_m,
  input [7:0] q_m,
  output [7:0] debug
);

localparam START  = 6'b000_000;
localparam LOOP_1 = 6'b001_001;
localparam LOOP_2 = 6'b010_010;
localparam LOOP_3 = 6'b011_100;
localparam FINISH = 6'b100_000;

logic [5:0] state;

logic start_loop_1;
logic start_loop_2;
logic start_loop_3;
logic finish_loop_1;
logic finish_loop_2;
logic finish_loop_3;

assign start_loop_1 = state[0];
assign start_loop_2 = state[1];
assign start_loop_3 = state[2];

logic [7:0] address_1;
logic [7:0] address_2;
logic [7:0] address_3;
logic [7:0] data_1;
logic [7:0] data_2;
logic [7:0] data_3;
logic wren_1;
logic wren_2;
logic wren_3;

always_comb
  case (state)
    LOOP_1 : {address, data, wren} = {address_1, data_1, wren_1}; 
    LOOP_2 : {address, data, wren} = {address_2, data_2, wren_2};
    LOOP_3 : {address, data, wren} = {address_3, data_3, wren_3};
    default : {address, data, wren} = {8'h00, 8'h00, 1'b0};
  endcase

always_ff @( posedge clk or negedge reset_n) begin
  if (~reset_n) begin
    state <= START;
  end else begin
    case (state)
      START   : state <= LOOP_1;
      LOOP_1  : if (finish_loop_1) state <= LOOP_2;
                else state <= LOOP_1;
      LOOP_2  : if (finish_loop_2) state <= LOOP_3;
                else state <= LOOP_2;
      LOOP_3  : if (finish_loop_3) state <= FINISH;
                else state <= LOOP_3;
      FINISH  : state <= FINISH;
      default : state <= START;
    endcase
  end
end

loop_1 loop_1_inst (
  .start(start_loop_1),
  .finish(finish_loop_1),
  .clk(clk),
  .reset_n(reset_n),
  .address(address_1),
  .data(data_1),
  .wren(wren_1),
  .q(q)
);

loop_2 loop_2_inst (
  .start(start_loop_2),
  .finish(finish_loop_2),
  .clk(clk),
  .reset_n(reset_n),
  .secret_key(secret_key),
  .address(address_2),
  .data(data_2),
  .wren(wren_2),
  .q(q)
);

loop_3 loop_3_inst (
  .start(start_loop_3),
  .finish(finish_loop_3),
  .clk(clk),
  .reset_n(reset_n),
  .address(address_3),
  .data(data_3),
  .wren(wren_3),
  .q(q),
  .address_d(address_d),
  .data_d(data_d),
  .wren_d(wren_d),
  .address_m(address_m),
  .q_m(q_m)
);

endmodule
`default_nettype wire