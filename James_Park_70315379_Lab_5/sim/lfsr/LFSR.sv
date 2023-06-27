`default_nettype none
module LFSR (
  input tri           clk,
  output logic [4:0]  lfsr
);

initial begin
  lfsr = 5'b00001;
end

tri feedback;
assign feedback = lfsr[0] ^ lfsr[2];

always_ff @( posedge clk ) begin
  lfsr[0] <= lfsr[1];
  lfsr[1] <= lfsr[2];
  lfsr[2] <= lfsr[3];
  lfsr[3] <= lfsr[4];
  lfsr[4] <= feedback;
end

endmodule
`default_nettype wire
