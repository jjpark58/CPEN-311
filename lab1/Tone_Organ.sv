`default_nettype none
module Tone_Organ (CLK_50M, SW, audio_output, info);
    
input logic CLK_50M;
input logic [3:0] SW;
output logic audio_output;
output logic [31:0] info;

//Character definitions

//numbers
parameter character_0 =8'h30;
parameter character_1 =8'h31;
parameter character_2 =8'h32;
parameter character_3 =8'h33;
parameter character_4 =8'h34;
parameter character_5 =8'h35;
parameter character_6 =8'h36;
parameter character_7 =8'h37;
parameter character_8 =8'h38;
parameter character_9 =8'h39;


//Uppercase Letters
parameter character_A =8'h41;
parameter character_B =8'h42;
parameter character_C =8'h43;
parameter character_D =8'h44;
parameter character_E =8'h45;
parameter character_F =8'h46;
parameter character_G =8'h47;
parameter character_H =8'h48;
parameter character_I =8'h49;
parameter character_J =8'h4A;
parameter character_K =8'h4B;
parameter character_L =8'h4C;
parameter character_M =8'h4D;
parameter character_N =8'h4E;
parameter character_O =8'h4F;
parameter character_P =8'h50;
parameter character_Q =8'h51;
parameter character_R =8'h52;
parameter character_S =8'h53;
parameter character_T =8'h54;
parameter character_U =8'h55;
parameter character_V =8'h56;
parameter character_W =8'h57;
parameter character_X =8'h58;
parameter character_Y =8'h59;
parameter character_Z =8'h5A;

//Lowercase Letters
parameter character_lowercase_a= 8'h61;
parameter character_lowercase_b= 8'h62;
parameter character_lowercase_c= 8'h63;
parameter character_lowercase_d= 8'h64;
parameter character_lowercase_e= 8'h65;
parameter character_lowercase_f= 8'h66;
parameter character_lowercase_g= 8'h67;
parameter character_lowercase_h= 8'h68;
parameter character_lowercase_i= 8'h69;
parameter character_lowercase_j= 8'h6A;
parameter character_lowercase_k= 8'h6B;
parameter character_lowercase_l= 8'h6C;
parameter character_lowercase_m= 8'h6D;
parameter character_lowercase_n= 8'h6E;
parameter character_lowercase_o= 8'h6F;
parameter character_lowercase_p= 8'h70;
parameter character_lowercase_q= 8'h71;
parameter character_lowercase_r= 8'h72;
parameter character_lowercase_s= 8'h73;
parameter character_lowercase_t= 8'h74;
parameter character_lowercase_u= 8'h75;
parameter character_lowercase_v= 8'h76;
parameter character_lowercase_w= 8'h77;
parameter character_lowercase_x= 8'h78;
parameter character_lowercase_y= 8'h79;
parameter character_lowercase_z= 8'h7A;

//Other Characters
parameter character_colon = 8'h3A;          //':'
parameter character_stop = 8'h2E;           //'.'
parameter character_semi_colon = 8'h3B;   //';'
parameter character_minus = 8'h2D;         //'-'
parameter character_divide = 8'h2F;         //'/'
parameter character_plus = 8'h2B;          //'+'
parameter character_comma = 8'h2C;          // ','
parameter character_less_than = 8'h3C;    //'<'
parameter character_greater_than = 8'h3E; //'>'
parameter character_equals = 8'h3D;         //'='
parameter character_question = 8'h3F;      //'?'
parameter character_dollar = 8'h24;         //'$'
parameter character_space=8'h20;           //' '     
parameter character_exclaim=8'h21;          //'!'


logic Clock_523Hz;
logic Clock_587Hz;
logic Clock_659Hz;
logic Clock_698Hz;
logic Clock_783Hz;
logic Clock_880Hz;
logic Clock_987Hz;
logic Clock_1046Hz;

//Generate 523 Hz Clock
Clk_Divider 
Gen_523Hz_clk
(.inclk(CLK_50M),
.outclk(Clock_523Hz),
.outclk_Not(),
.div_clk_count(32'hB790),
.Reset(1'h1)
); 

//Generate 587 Hz Clock
Clk_Divider 
Gen_587Hz_clk
(.inclk(CLK_50M),
.outclk(Clock_587Hz),
.outclk_Not(),
.div_clk_count(32'hA65D),
.Reset(1'h1)
);

//Generate 659 Hz Clock
Clk_Divider 
Gen_659Hz_clk
(.inclk(CLK_50M),
.outclk(Clock_659Hz),
.outclk_Not(),
.div_clk_count(32'h9430),
.Reset(1'h1)
); 

//Generate 698 Hz Clock
Clk_Divider 
Gen_698Hz_clk
(.inclk(CLK_50M),
.outclk(Clock_698Hz),
.outclk_Not(),
.div_clk_count(32'h8BE8),
.Reset(1'h1)
); 

//Generate 783 Hz Clock
Clk_Divider 
Gen_783Hz_clk
(.inclk(CLK_50M),
.outclk(Clock_783Hz),
.outclk_Not(),
.div_clk_count(32'h7CB8),
.Reset(1'h1)
); 

//Generate 880 Hz Clock
Clk_Divider 
Gen_880Hz_clk
(.inclk(CLK_50M),
.outclk(Clock_880Hz),
.outclk_Not(),
.div_clk_count(32'h6EF9),
.Reset(1'h1)
); 

//Generate 987 Hz Clock
Clk_Divider 
Gen_987Hz_clk
(.inclk(CLK_50M),
.outclk(Clock_987Hz),
.outclk_Not(),
.div_clk_count(32'h62F1),
.Reset(1'h1)
); 

//Generate 1046 Hz Clock
Clk_Divider 
Gen_1046Hz_clk
(.inclk(CLK_50M),
.outclk(Clock_1046Hz),
.outclk_Not(),
.div_clk_count(32'h5D5C),
.Reset(1'h1)
); 

always @(*) begin
  case (SW[3:0]) // Gray encoding
    {4'b0001} : {audio_output, info} = {Clock_523Hz, character_D, character_lowercase_o, character_space, character_space}; // Do
    {4'b0011} : {audio_output, info} = {Clock_587Hz, character_R, character_lowercase_e, character_space, character_space}; // Re
    {4'b0111} : {audio_output, info} = {Clock_659Hz, character_M, character_lowercase_i, character_space, character_space}; // Mi
    {4'b0101} : {audio_output, info} = {Clock_698Hz, character_F, character_lowercase_a, character_space, character_space}; // Fa
    {4'b1101} : {audio_output, info} = {Clock_783Hz, character_S, character_lowercase_o, character_space, character_space}; // So
    {4'b1111} : {audio_output, info} = {Clock_880Hz, character_L, character_lowercase_a, character_space, character_space}; // La
    {4'b1011} : {audio_output, info} = {Clock_987Hz, character_S, character_lowercase_i, character_space, character_space}; // Si
    {4'b1001} : {audio_output, info} = {Clock_1046Hz, character_D, character_O, character_2, character_space};              // DO2
    default   : {audio_output, info} = {1'b0, character_O, character_lowercase_f, character_lowercase_f, character_space};  // Off
  endcase
end

endmodule
`default_nettype wire