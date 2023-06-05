`timescale 1 ps/ 1 ps

module tb_Clk_Divider();

    logic sim_inclk;
    logic sim_outclk;
    logic sim_outclk_Not;
    logic [31:0] sim_div_clk_count; 
    logic sim_Reset;

    Clk_Divider DUT(
        .inclk(sim_inclk), 
        .outclk(sim_outclk),
        .outclk_Not(sim_outclk_Not), 
        .div_clk_count(sim_div_clk_count), 
        .Reset(sim_Reset)
    );

    initial begin

        sim_inclk = 0;
        sim_Reset = 0;
        sim_div_clk_count = 1;
        #5; sim_inclk = 1; #5; sim_inclk = 0;

        sim_Reset = 1;
        // 12 inclk cycles creates 6 outclk cycles
        for (integer i = 0; i < 12; i = i + 1) begin        
            #5; sim_inclk = 1; #5; sim_inclk = 0;
        end

        sim_Reset = 0;
        sim_div_clk_count = 2;
        #5; sim_inclk = 1; #5; sim_inclk = 0;

        sim_Reset = 1;
        // 12 inclk cycles creates 3 outclk cycles
        for (integer i = 0; i < 12; i = i + 1) begin        
            #5; sim_inclk = 1; #5; sim_inclk = 0;
        end

        sim_Reset = 0;
        sim_div_clk_count = 3;
        #5; sim_inclk = 1; #5; sim_inclk = 0;

        sim_Reset = 1;
        // 12 inclk cycles creates 2 outclk cycles
        for (integer i = 0; i < 12; i = i + 1) begin        
            #5; sim_inclk = 1; #5; sim_inclk = 0;
        end

        $stop;
    end

    

endmodule: tb_Clk_Divider
