`timescale 1 ps/ 1 ps

module tb_Tone_Organ();

    logic sim_CLK_50M;
    logic [3:0] sim_SW;
    logic sim_audio_output;
    logic [31:0] sim_info;

    Tone_Organ DUT(
        .CLK_50M(sim_CLK_50M),
        .SW(sim_SW),
        .audio_output(sim_audio_output),
        .info(sim_info)
    );

    initial begin

        sim_SW[3:0] = 4'b0000;
        #2; sim_CLK_50M = 1; #2; sim_CLK_50M = 0;

        sim_SW[3:0] = 4'b0001;

        for (integer i = 0; i < 50000000; i = i + 1) begin        
            #2; sim_CLK_50M = 1; #2; sim_CLK_50M = 0;
        end

        $stop;
    end

endmodule: tb_Tone_Organ
