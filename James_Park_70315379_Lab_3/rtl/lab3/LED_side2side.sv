`default_nettype none
module LED_side2side (clk, LED);

input logic clk;
output logic [7:0] LED;
    
logic led_dir = 1; // 0 is to the right, 1 is to the left

always @(posedge clk) begin
  casez ({led_dir, LED})
      {1'b?, 8'b0000_0000} : {led_dir, LED} <= {1'b1, 8'b0000_0001}; // start
      {1'b1, 8'b0???_????} : {led_dir, LED} <= {led_dir, (LED << 1)};   // move left
      {1'b1, 8'b1000_0000} : {led_dir, LED} <= {~led_dir, (LED >> 1)};  // left edge
      {1'b0, 8'b????_???0} : {led_dir, LED} <= {led_dir, (LED >> 1)};   // move right
      {1'b0, 8'b0000_0001} : {led_dir, LED} <= {~led_dir, (LED << 1)};  // right edge
      default : {led_dir, LED} <= {1'b1, 8'b0000_0000};
  endcase
end

endmodule
`default_nettype wire