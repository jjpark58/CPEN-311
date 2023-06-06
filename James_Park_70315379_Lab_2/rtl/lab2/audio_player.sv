`default_nettype none
module audio_player (
  input clk_22KHz,
  input [31:0] flash_mem_readdata,
  input start,
  input forward,
  input play,
  output logic finished,
  output logic [15:0] audio_sample
);

logic is_even_addr = 1;

always_ff @(posedge clk_22KHz) begin
  if (play) begin
    if (start || !finished) begin // received start signal or has not finished reading all of readdata
      if (forward) begin // play in forward direction
        if (is_even_addr) begin
          audio_sample <= flash_mem_readdata[15:0]; // read first audio sample of readdata
          finished <= 0; // signal to controller that audio player is not yet done reading current readdata
        end else begin
          audio_sample <= flash_mem_readdata[31:16]; // read second part of readdata
          finished <= 1; // signal to contoller that audio player needs new readdata
        end
      end else begin // play backwards
        if (is_even_addr) begin
          audio_sample <= flash_mem_readdata[31:16]; 
          finished <= 0;
        end else begin
          audio_sample <= flash_mem_readdata[15:0];
          finished <= 1;
        end
      end
      is_even_addr <= ~is_even_addr; // alternate reading from [15:0] and [31:16] of flash_mem_readdata
    end
  end
end

endmodule