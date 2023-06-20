`default_nettype none
module loop_1 (
  input start,
  output finish,
  input clk,
  input reset_n,
  output [7:0] address,
  output [7:0] data,
  output wren,
  input [7:0] q
);

localparam START       = 5'b00_000;
localparam WRITE       = 5'b01_001;
localparam INCREMENT   = 5'b10_010;
localparam FINISH_LOOP = 5'b11_100;

logic [4:0] state;

logic incr;
logic write_finish;

assign wren   = state[0];
assign incr   = state[1];
assign finish = state[2];

logic start_reg;
logic s_memory_filled;
assign s_memory_filled = &q;
assign write_finish = q == data;

assign data = address;

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
      START     : state <= WRITE;
      WRITE     : if (write_finish) state <= INCREMENT;
                  else state <= WRITE;
      INCREMENT : if (!s_memory_filled) state <= WRITE;
                  else state <= FINISH_LOOP;
      FINISH_LOOP : state <= FINISH_LOOP;
      default : state <= START;
    endcase
  end
end

always_ff @( posedge incr or negedge reset_n ) begin
  if (~reset_n) begin
    address <= 8'h00;
  end else begin
    address <= address + 8'h01;
  end
end


endmodule
`default_nettype wire
