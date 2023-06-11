`timescale 1ns / 1ps
`default_nettype none
module Clk_Divider(inclk, outclk, outclk_Not, div_clk_count, Reset);
    input logic inclk;
	input logic Reset;
    output logic outclk;
	output logic outclk_Not;
	input logic [31:0] div_clk_count;
	
    logic [31:0] pos_count = 1;
    assign outclk_Not = ~outclk; 

	always @(posedge inclk) begin
        if (~Reset) begin
            outclk <= 1;
            pos_count <= 1;
        end else begin
            if (pos_count < div_clk_count) begin
                outclk <= outclk;
                pos_count <= pos_count + 1;
            end else begin 
                outclk <= ~outclk;
                pos_count <= 1;
            end
        end
    end
endmodule
`default_nettype wire
