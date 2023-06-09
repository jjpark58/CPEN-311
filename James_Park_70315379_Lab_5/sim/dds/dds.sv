`default_nettype none
module dds (
  input tri           clk,
  input tri           lfsr_clk,
  input tri           outclk,
  input tri           lfsr_0,
  input tri [31:0]    dds_increment,
  input tri [1:0]     mod_sel,
  input tri [1:0]     sig_sel,
  output logic [11:0] actual_sel_mod,
  output logic [11:0] actual_sel_sig
);

localparam ASK  = 3'b00_0;
localparam FSK  = 3'b01_1;
localparam BPSK = 3'b10_0;
localparam LFSR = 3'b11_0;

logic [2:0] state_mod;
logic [2:0] next_state_mod;

logic [11:0] sin_out;
logic [11:0] cos_out;
logic [11:0] squ_out;
logic [11:0] saw_out;

logic [11:0] mod_out;
logic [11:0] sig_out;
logic [11:0] reg_sig_out;
logic [11:0] reg_mod_out;
logic lfsr_0_sync;
logic [31:0] tuning_word;

clk_up #(1) clk_up_lfsr (
  .inclk(lfsr_clk),
  .outclk(clk),
  .indata(lfsr_0),
  .outdata(lfsr_0_sync)
);

always_comb
  case (mod_sel)
    2'b00   : {next_state_mod, mod_out} = {ASK, sin_out * lfsr_0_sync};
    2'b01   : {next_state_mod, mod_out} = {FSK, sin_out};
    2'b10   : {next_state_mod, mod_out} = {BPSK, (lfsr_0_sync) ? sin_out : cos_out};
    2'b11   : {next_state_mod, mod_out} = {LFSR, {lfsr_0_sync, {11{1'b0}}}};
    default : {next_state_mod, mod_out} = {ASK, sin_out * lfsr_0_sync};
  endcase

always_comb
  case (sig_sel)
    2'b00 : sig_out = sin_out;
    2'b01 : sig_out = cos_out;
    2'b10 : sig_out = saw_out;
    2'b11 : sig_out = squ_out;
    default : sig_out = squ_out;
  endcase

always_ff @( posedge clk ) begin
  state_mod <= next_state_mod;
  reg_mod_out <= mod_out;
  reg_sig_out <= sig_out;
end

clk_down #(12) clk_down_modulation  (
  .inclk(clk),
  .outclk(outclk),
  .indata(reg_mod_out),
  .outdata(actual_sel_mod)
);

clk_down #(12) clk_down_signal  (
  .inclk(clk),
  .outclk(outclk),
  .indata(reg_sig_out),
  .outdata(actual_sel_sig)
);

assign tuning_word = (state_mod[0]) ? dds_increment : 32'h1000_0000;

waveform_gen waveform_gen_inst (
  .clk(clk),
  .reset(1'b1),
  .en(1'b1),
  .phase_inc(tuning_word),
  .sin_out(sin_out),
  .cos_out(cos_out),
  .squ_out(squ_out),
  .saw_out(saw_out)
);
  
endmodule
`default_nettype wire
