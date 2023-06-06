`default_nettype none
module controller (
  input inclk,
  input flash_mem_waitrequest,
  input [7:0] kbd_received_ascii_code,
  input finishedA,
  output logic [22:0] flash_mem_address,
  output logic audio_play,
  output logic forward,
  output logic startA
);

parameter character_B =8'h42;
parameter character_D =8'h44;
parameter character_E =8'h45;
parameter character_F =8'h46;

parameter character_lowercase_b= 8'h62;
parameter character_lowercase_d= 8'h64;
parameter character_lowercase_e= 8'h65;
parameter character_lowercase_f= 8'h66;


logic device_startup = 1;

always_ff @(posedge inclk) begin
  if (!flash_mem_waitrequest) begin
    if (device_startup) begin // initial device start
      flash_mem_address <= 23'h80000; // set address to end
      device_startup <= ~device_startup; 
    end else if (!startA && finishedA) begin // audio player not started and is ready for next readdata
      // if forward, increment address, otherwise decrement
      flash_mem_address <= (forward) ? (flash_mem_address < 23'h7FFFF) ? flash_mem_address + 23'b1 : {23{1'b0}} : (flash_mem_address > 23'h0) ? flash_mem_address - 23'b1 : 23'h7FFFF;
      startA <= 1; // start signal for audio player
    end else if (!finishedA) begin
      startA <= 0; // confirmed audio player received start signal but hasn't finished reading second part of readdata
    end
  end
  case (kbd_received_ascii_code) // keyboard control
    character_E, character_lowercase_e: {audio_play, forward} <= {1'b1, forward}; // play
    character_D, character_lowercase_d: {audio_play, forward} <= {1'b0, forward}; // pause
    character_F, character_lowercase_f: {audio_play, forward} <= {audio_play, 1'b1}; // forward
    character_B, character_lowercase_b: {audio_play, forward} <= {audio_play, 1'b0}; // backward
    default:                            {audio_play, forward} <= {audio_play, forward}; // any other key
  endcase  
end

endmodule