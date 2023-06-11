`timescale 1 ps / 1 ps
module tb_controller();
  
  logic sim_inclk;
  logic sim_flash_mem_waitrequest;
  logic [7:0] sim_kbd_received_ascii_code;
  logic sim_finishedA;
  logic [22:0] sim_flash_mem_address;
  logic sim_audio_play;
  logic sim_forward;
  logic sim_startA;
  
  parameter character_B =8'h42;
  parameter character_D =8'h44;
  parameter character_E =8'h45;
  parameter character_F =8'h46;

  controller DUT (
    .inclk(sim_inclk), // in
    .flash_mem_waitrequest(sim_flash_mem_waitrequest), // in
    .kbd_received_ascii_code(sim_kbd_received_ascii_code), // in
    .finishedA(sim_finishedA), // in
    .flash_mem_address(sim_flash_mem_address), // out
    .audio_play(sim_audio_play), // out
    .forward(sim_forward), // out
    .startA(sim_startA) // out
  );

  initial begin
    
    sim_finishedA = 1;
    #5; sim_inclk = 1; #5; sim_inclk = 0; 
    #5; sim_inclk = 1; #5; sim_inclk = 0; 

    sim_flash_mem_waitrequest = 0;
    sim_kbd_received_ascii_code = character_F;
    #5; sim_inclk = 1; #5; sim_inclk = 0; 

    sim_kbd_received_ascii_code = character_E;
    #5; sim_inclk = 1; #5; sim_inclk = 0; 

    sim_kbd_received_ascii_code = 0;
    sim_finishedA = 0;

    #5; sim_inclk = 1; #5; sim_inclk = 0; 
    sim_finishedA = 1;

    #5; sim_inclk = 1; #5; sim_inclk = 0; 
    #5; sim_inclk = 1; #5; sim_inclk = 0; 
    #5; sim_inclk = 1; #5; sim_inclk = 0; 
    
    sim_finishedA = 0;
    #5; sim_inclk = 1; #5; sim_inclk = 0; 
    #5; sim_inclk = 1; #5; sim_inclk = 0; 
    
    sim_finishedA = 1;
    #5; sim_inclk = 1; #5; sim_inclk = 0; 
    
    sim_finishedA = 0;
    #5; sim_inclk = 1; #5; sim_inclk = 0; 

    sim_finishedA = 1;
    #5; sim_inclk = 1; #5; sim_inclk = 0; 
    #5; sim_inclk = 1; #5; sim_inclk = 0; 

    $stop;
  end

endmodule