`default_nettype none
module fsm #( parameter SECRET_KEY_END = 24'hFFFFFF ) (
  input clk,
  input reset_n,
  output match_found,
  output all_keys_checked,
  output request_new_key,
  input [23:0] secret_key,
  output [7:0] address,
  output [7:0] data,
  output wren,
  input [7:0] q,
  output [7:0] address_d,
  output [7:0] data_d,
  output wren_d,
  input [7:0] q_d,
  output [7:0] address_m,
  input [7:0] q_m
);

localparam START   = 8'b000_00000;
localparam LOOP_1  = 8'b001_00001;
localparam LOOP_2  = 8'b010_00010;
localparam LOOP_3  = 8'b011_00100;
localparam NEW_KEY = 8'b100_01000;
localparam FINISH  = 8'b110_10000;

logic [7:0] state;

logic invalid_key;

logic start_loop_1;
logic start_loop_2;
logic start_loop_3;
logic finish_loop_1;
logic finish_loop_2;
logic finish_loop_3;
logic finish;

assign start_loop_1    = state[0];
assign start_loop_2    = state[1];
assign start_loop_3    = state[2];
assign request_new_key = state[3];
assign finish          = state[4];

logic [7:0] address_1;
logic [7:0] address_2;
logic [7:0] address_3;
logic [7:0] data_1;
logic [7:0] data_2;
logic [7:0] data_3;
logic wren_1;
logic wren_2;
logic wren_3;


assign all_keys_checked = (secret_key == SECRET_KEY_END);

always_comb
  case (state)
    LOOP_1 : {address, data, wren} = {address_1, data_1, wren_1}; 
    LOOP_2 : {address, data, wren} = {address_2, data_2, wren_2};
    LOOP_3 : {address, data, wren} = {address_3, data_3, wren_3};
    default : {address, data, wren} = {8'h00, 8'h00, 1'b0};
  endcase

// match found is true if on finish signal, invalid key is false
always_ff @( posedge finish or negedge reset_n ) begin
  if (~reset_n) begin
    match_found <= 1'b0;
  end else begin
    match_found <= ~invalid_key;
  end
end

always_ff @( posedge clk or negedge reset_n) begin
  if (~reset_n) begin
    state <= START;
  end else begin
    case (state)
      START   : state <= LOOP_1;
      LOOP_1  : if (finish_loop_1) state <= LOOP_2; // stay on loop 1 until it returns finish_loop_1 signal
                else state <= LOOP_1;
      LOOP_2  : if (finish_loop_2) state <= LOOP_3; // stay on loop 2 until it returns finish_loop_2 signal
                else state <= LOOP_2;
      LOOP_3  : if ((invalid_key & all_keys_checked) | finish_loop_3) state <= FINISH; // go to finish if all_keys_checked and invalid or finish_loop_3
                else if (invalid_key) state <= NEW_KEY; // request for new key if current key is invalid
                else state <= LOOP_3; // otherwise stay on loop 3
      NEW_KEY : state <= START; // request new key
      FINISH  : state <= FINISH;
      default : state <= START;
    endcase
  end
end

loop_1 loop_1_inst (
  .start(start_loop_1),
  .finish(finish_loop_1),
  .clk(clk),
  .reset_n(reset_n & ~request_new_key), // reset loop if new key requested
  .address(address_1),
  .data(data_1),
  .wren(wren_1),
  .q(q)
);

loop_2 loop_2_inst (
  .start(start_loop_2),
  .finish(finish_loop_2),
  .clk(clk),
  .reset_n(reset_n & ~request_new_key), // reset loop if new key requested
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
  .reset_n(reset_n & ~request_new_key), // reset loop if new key requested
  .invalid_key(invalid_key),
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