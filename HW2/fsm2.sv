`default_nettype none
module fsm (
  output logic [4:0] state, 
  output logic odd, 
  output logic even, 
  output logic terminal,
  output logic [2:0] Out1,
  output logic [2:0] Out2,
  input pause, 
  input restart, 
  input clk, 
  input rst,
  input goto_third0
);

  localparam [2:0] FIRST  = 3'b001_00;
  localparam [2:0] SECOND = 3'b010_01;
  localparam [2:0] THIRD  = 3'b011_00;
  localparam [2:0] Fourth = 3'b100_01;
  localparam [2:0] Fifth  = 3'b101_10;

  always_ff @(posedge clk or posedge rst) // sequential
    begin
      if (rst) state <= FIRST;
      else
      begin
        case (state)
          FIRST:    if (restart | pause) state <= FIRST;
                    else state <= SECOND;
          SECOND:   if (restart) state <= FIRST;
                    else if (pause) state <= SECOND;
                    else state <= THIRD;
          THIRD:    if (restart) state <= FIRST;
                    else if (pause) state <= Fourth;
                    else state <= Fourth;
          Fourth:   if (restart) state <= FIRST;
                    else if (pause) state <= Fourth;
                    else state <= Fifth;
          Fifth:    if (goto_third) state <= THIRD;
                    else if (restart) state <= FIRST;
                    else if (pause) state <= Fifth;
                    else state <= FIRST;
          default:  state <= FIRST;
        endcase
      end
    end

  assign even = state[0];
  assign odd = ~state[0];
  assign terminal = state[1];

  always_comb
    case (state)
      FIRST:    {Out1, Out2} = {3'd3, 3'd2};
      SECOND:   {Out1, Out2} = {3'd5, 3'd4};
      THIRD:    {Out1, Out2} = {3'd2, 3'd7};
      Fourth:   {Out1, Out2} = {3'd6, 3'd3};
      Fifth:    {Out1, Out2} = {3'd5, 3'd2};
      default:  {Out1, Out2} = {3'd3, 3'd2};
    endcase
endmodule
`default_nettype wire
