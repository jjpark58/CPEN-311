`default_nettype none
module clk_down #(parameter WIDTH = 32) (
  input tri                 inclk,
  input tri                 outclk,
  input tri [WIDTH-1:0]     indata,
  output logic [WIDTH-1:0]  outdata
);

logic [WIDTH-1:0] reg1;
logic [WIDTH-1:0] reg3;

always_ff @( posedge inclk ) begin
  reg1 <= indata;
  reg3 <= (en) ? reg1 : reg3;
end

logic ff;
logic en;

always_ff @( negedge inclk ) begin
  ff <= outclk;
  en <= ff;
end

always_ff @( posedge outclk ) begin
  outdata <= reg3;
end

endmodule
`default_nettype wire
