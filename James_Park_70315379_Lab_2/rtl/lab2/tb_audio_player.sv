`timescale 1 ps/ 1 ps

module tb_audio_player();

  logic sim_clk_22KHz;
  logic [31:0] sim_flash_mem_readdata;
  logic sim_start;
  logic sim_forward;
  logic sim_play;
  logic sim_finished;
  logic [15:0] sim_audio_sample;
    
  audio_player DUT(
    .clk_22KHz(sim_clk_22KHz), // in
    .flash_mem_readdata(sim_flash_mem_readdata), // in
    .start(sim_start),  // in
    .forward(sim_forward), // in
    .play(sim_play), // in
    .finished(sim_finished), // out
    .audio_sample(sim_audio_sample) // out
  );

  initial begin
    sim_clk_22KHz = 0;
    #5; sim_clk_22KHz = 1; #5; sim_clk_22KHz = 0; 

    sim_flash_mem_readdata = 32'hFFFF_1111;
    sim_start = 1;
    sim_forward = 1;
    sim_play = 1;
    
    #5; sim_clk_22KHz = 1; #5; sim_clk_22KHz = 0; 
    sim_start = 0;
    #5; sim_clk_22KHz = 1; #5; sim_clk_22KHz = 0; 

    sim_flash_mem_readdata = 32'h3333_CCCC;
    sim_play = 0;
    sim_start = 1;
    #5; sim_clk_22KHz = 1; #5; sim_clk_22KHz = 0; 
    #5; sim_clk_22KHz = 1; #5; sim_clk_22KHz = 0; 

    sim_forward = 0;
    sim_play = 1;
    #5; sim_clk_22KHz = 1; #5; sim_clk_22KHz = 0; 
    #5; sim_clk_22KHz = 1; #5; sim_clk_22KHz = 0; 
    #5; sim_clk_22KHz = 1; #5; sim_clk_22KHz = 0; 
    #5; sim_clk_22KHz = 1; #5; sim_clk_22KHz = 0; 


    $stop;
  end

endmodule: tb_audio_player