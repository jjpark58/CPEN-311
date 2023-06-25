`default_nettype none
module fsm (
  input tri           clk,
  input tri           outclk,
  input tri           lfsr_0,
  input tri [1:0]     mod_sel,
  input tri [1:0]     sig_sel,
  output logic [11:0] actual_sel_mod,
  output logic [11:0] actual_sel_sig
);

logic [11:0] sin_out;
logic [11:0] cos_out;
logic [11:0] squ_out;
logic [11:0] saw_out;

logic [11:0] mod_out;
logic [11:0] sig_out;

always_comb
  case (mod_sel)
    2'b00 : mod_out = sin_out * lfsr_0;
    // 2'b01 : mod_out
    2'b10 : mod_out = (lfsr_0) ? sin_out : cos_out;
    2'b11 : mod_out = {lfsr_0, {11{1'b0}}};
    default : mod_out = sin_out * lfsr_0;
  endcase

always_comb
  case (sig_sel)
    2'b00 : sig_out = sin_out;
    2'b01 : sig_out = cos_out;
    2'b10 : sig_out = saw_out;
    2'b11 : sig_out = squ_out;
    default : sig_out = squ_out;
  endcase
  

// always_ff @( posedge clk or negedge reset_n ) begin
//   if (~reset_n) begin
    
//   end else begin
    
//   end
// end

clk_down #(12) clk_down_modulation  (
  .inclk(clk),
  .outclk(outclk),
  .indata(mod_out),
  .outdata(actual_sel_mod)
);

clk_down #(12) clk_down_signal  (
  .inclk(clk),
  .outclk(outclk),
  .indata(sig_out),
  .outdata(actual_sel_sig)
);

waveform_gen waveform_gen_inst (
  .clk(clk),
  .reset(1'b1),
  .en(1'b1),
  .phase_inc(32'h0102),
  .sin_out(sin_out),
  .cos_out(cos_out),
  .squ_out(squ_out),
  .saw_out(saw_out)
);
  
endmodule
`default_nettype wire
