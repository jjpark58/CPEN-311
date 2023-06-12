`default_nettype none
module controller (
  input inclk,
  input async_in,
  input flash_mem_waitrequest,
  input flash_mem_readdatavalid,
  input [31:0] flash_mem_readdata,
  input [7:0] kbd_received_ascii_code,
  output logic flash_mem_read,
  output logic [22:0] flash_mem_address,
  output logic [31:0] hold_flash_mem_readdata,
  output logic [15:0] audio_out
);

parameter character_B =8'h42;
parameter character_D =8'h44;
parameter character_E =8'h45;
parameter character_F =8'h46;

parameter character_lowercase_b= 8'h62;
parameter character_lowercase_d= 8'h64;
parameter character_lowercase_e= 8'h65;
parameter character_lowercase_f= 8'h66;

logic sync_sig;
logic ff1, ff2;

always_ff @(posedge inclk ) begin
  ff1 <= async_in;
end

always_ff @(posedge inclk ) begin
  ff2 <= ff1;
end

assign sync_sig = ff2;

logic audio_play;
logic backward;

always_ff @(posedge inclk) begin
  case (kbd_received_ascii_code) // keyboard control
    character_E, character_lowercase_e: {audio_play, backward} <= {1'b1, backward}; // play
    character_D, character_lowercase_d: {audio_play, backward} <= {1'b0, backward}; // pause
    character_F, character_lowercase_f: {audio_play, backward} <= {audio_play, 1'b0}; // forward
    character_B, character_lowercase_b: {audio_play, backward} <= {audio_play, 1'b1}; // backward
    default:                            {audio_play, backward} <= {audio_play, backward}; // any other key
  endcase  
end

logic [8:0] state;
localparam FIRST_STATE        = 9'b0000_00001;
localparam UPDATE_ADDR        = 9'b0001_00010;
localparam FETCH_DATA         = 9'b0010_00100;
localparam STORE_DATA         = 9'b0011_01000;
localparam FIRST_READ         = 9'b0100_00000;
localparam FIRST_READ_DONE    = 9'b0101_00000;
localparam SECOND_READ        = 9'b0110_10000;
localparam SECOND_READ_DONE   = 9'b0111_10000;
localparam IDLE               = 9'b1000_00000;

logic device_first_start;
logic UPDATE_ADDR_reg;
logic store_data_reg;
logic mem_read;
logic valid;
assign valid = flash_mem_readdatavalid;

assign device_first_start = state[0];
assign UPDATE_ADDR_reg    = state[1];
assign flash_mem_read     = state[2];
assign store_data_reg     = state[3];
assign mem_read           = state[4];

always_ff @(posedge inclk) begin
  case (state)
    FIRST_STATE:      state <= UPDATE_ADDR;
    UPDATE_ADDR:      if (!flash_mem_waitrequest) state <= FETCH_DATA;
                      else state <= UPDATE_ADDR;
    FETCH_DATA:       if (flash_mem_readdatavalid) state <= STORE_DATA;
                      else state <= FETCH_DATA;
    STORE_DATA:       state <= FIRST_READ;
    FIRST_READ:       if (sync_sig & audio_play) state <= FIRST_READ_DONE; // not finishedA indicates has started
                      else state <= FIRST_READ;
    FIRST_READ_DONE:  if (!sync_sig) state <= SECOND_READ;
                      else state <= FIRST_READ_DONE;
    SECOND_READ:      if (sync_sig & audio_play) state <= IDLE; // not finishedA indicates has started
                      else state <= SECOND_READ;
    SECOND_READ_DONE: if (!sync_sig) state <= IDLE;
                      else state <= SECOND_READ_DONE;
    IDLE:             if (!flash_mem_waitrequest) state <= UPDATE_ADDR;
                      else state <= IDLE;
    default:      state <= FIRST_STATE;
  endcase
end

always_ff @(posedge UPDATE_ADDR_reg or posedge device_first_start) begin
  if (device_first_start) flash_mem_address <= 23'h80000; // set address to end
  else begin
    if (!backward) flash_mem_address <= (flash_mem_address < 23'h7FFFF) ? flash_mem_address + 23'b1 : {23{1'b0}};
    else flash_mem_address <= (flash_mem_address > 23'h0) ? flash_mem_address - 23'b1 : 23'h7FFFF;
  end
end

always_ff @(posedge sync_sig) begin
  if (audio_play) begin
    if ((!backward && !mem_read) || (backward && mem_read)) audio_out <= hold_flash_mem_readdata[15:0];
    else if ((!backward && mem_read) || (backward && !mem_read)) audio_out <= hold_flash_mem_readdata[31:16];
    else audio_out <= audio_out;
  end
end

always_ff @(posedge store_data_reg) begin
  hold_flash_mem_readdata <= flash_mem_readdata;
end

endmodule