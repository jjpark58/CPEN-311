`default_nettype none
module trap_edge (
  input clk,
  input async_sig,
  input reset,
  output logic trapped_edge
);

logic ff1, ff2, ff3;

always_ff @( posedge async_sig or posedge reset ) begin
  if (reset) begin
    ff1 <= 1'b0;
  end else begin
    ff1 <= 1'b1;
  end
end

always_ff @( posedge clk ) begin
  ff2 <= ff1;
end

always_ff @( posedge clk ) begin
  ff3 <= ff2;
end

assign trapped_edge = ff3;

endmodule
`default_nettype wire
