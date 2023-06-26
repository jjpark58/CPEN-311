`default_nettype none
module clk_up #(parameter WIDTH = 32) (
  input tri                 inclk,
  input tri                 outclk,
  input tri [WIDTH-1:0]     indata,
  output logic [WIDTH-1:0]  outdata // reg2
);

logic [WIDTH-1:0] reg1;
logic [WIDTH-1:0] reg3;
logic ff;
logic en;

always_ff @( posedge inclk ) begin
  reg1 <= indata;
end

always_ff @( posedge outclk ) begin
  reg3 <= (en) ? reg1 : reg3;
  outdata <= reg3;
end

always_ff @( negedge outclk ) begin
  ff <= inclk;
  en <= ff;
end

endmodule
`default_nettype wire