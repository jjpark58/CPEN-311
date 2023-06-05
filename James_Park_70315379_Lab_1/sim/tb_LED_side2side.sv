`timescale 1 ps/ 1 ps

module tb_LED_side2side();

    logic sim_clk;
    logic [7:0] sim_LED;

    LED_side2side DUT(
        .clk(sim_clk), 
        .LED(sim_LED)
    );

    initial begin

        sim_clk = 0;
        #5; sim_clk = 1; #5; sim_clk = 0;

        // 12 inclk cycles creates 6 outclk cycles
        for (integer i = 0; i < 40; i = i + 1) begin        
            #5; sim_clk = 1; #5; sim_clk = 0;
        end

        $stop;
    end

endmodule: tb_LED_side2side
