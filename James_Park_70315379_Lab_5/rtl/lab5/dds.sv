`default_nettype none
module dds (
  input tri           clk,
  input tri           lfsr_clk,
  input tri           outclk,
  input tri           lfsr,
  input tri           lfsr_2,
  input tri [31:0]    dds_increment,
  input tri [2:0]     mod_sel,
  input tri [1:0]     sig_sel,
  output logic [11:0] actual_sel_mod,
  output logic [11:0] actual_sel_sig
);

localparam ASK  = 4'b000_0;
localparam FSK  = 4'b001_1;
localparam BPSK = 4'b010_0;
localparam QPSK = 4'b011_0;
localparam LFSR = 4'b100_0;

logic [3:0] state_mod;
logic [3:0] next_state_mod;

logic [11:0] sin_out;
logic [11:0] cos_out;
logic [11:0] squ_out;
logic [11:0] saw_out;

logic [11:0] mod_out;
logic [11:0] sig_out;
logic [11:0] reg_sig_out;
logic [11:0] reg_mod_out;
logic lfsr_sync;
logic lfsr_2_sync;
logic [31:0] tuning_word;
logic [11:0] qpsk_out;

assign tuning_word = (state_mod[0]) ? dds_increment : 32'h0102;

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

clk_up #(1) clk_up_lfsr (
  .inclk(lfsr_clk),
  .outclk(clk),
  .indata(lfsr),
  .outdata(lfsr_sync)
);

clk_up #(1) clk_up_lfsr_2 (
  .inclk(lfsr_clk),
  .outclk(clk),
  .indata(lfsr_2),
  .outdata(lfsr_2_sync)
);

always_comb
  case ({lfsr_2_sync, lfsr_sync})
    2'b00   : qpsk_out = ~cos_out;
    2'b01   : qpsk_out = sin_out;
    2'b10   : qpsk_out = ~sin_out;
    2'b11   : qpsk_out = cos_out;
    default : qpsk_out = ~cos_out;
  endcase

always_comb
  case (mod_sel)
    3'b000  : {next_state_mod, mod_out} = {ASK, sin_out * lfsr_sync};
    3'b001  : {next_state_mod, mod_out} = {FSK, sin_out};
    3'b010  : {next_state_mod, mod_out} = {BPSK, (lfsr_sync) ? cos_out : ~cos_out};
    3'b011  : {next_state_mod, mod_out} = {QPSK, qpsk_out};
    3'b100  : {next_state_mod, mod_out} = {LFSR, {lfsr_sync, {11{1'b0}}}};
    default : {next_state_mod, mod_out} = {ASK, sin_out * lfsr_sync};
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
  
endmodule
`default_nettype wire
