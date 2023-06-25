`default_nettype none
module WAVEFORM_GEN ( 
  input tri           clk,
  input tri           reset_n,
  input tri           en,
  input tri [31:0]    phase_inc,
  output logic [11:0] sin_out,
  output logic [11:0] cos_out,
  output logic [11:0] squ_out,
  output logic [11:0] saw_out
);

waveform_gen waveform_gen_vhdl (
  .clk(clk),
  .reset(reset_n),
  .en(en),
  .phase_inc(phase_inc),
  .sin_out(sin_out),
  .cos_out(cos_out),
  .squ_out(squ_out),
  .saw_out(saw_out)
);

endmodule
`default_nettype wire