module HW1 (input outclk, input async_sig, output reg out_sync_sig);

    reg FDC_Q1;
    reg FDC_Q2;
    //reg FDC_Q3;
    reg FDC_1_Q;
    wire GND = 0;


    always @(posedge async_sig, posedge FDC_1_Q) begin
        if (FDC_1_Q) FDC_Q1 <= 0;
        else FDC_Q1 <= 1;
    end

    always @(posedge outclk, posedge GND) begin
        if (GND) FDC_Q2 <= 0;
        else FDC_Q2 <= FDC_Q1;
    end

    always @(posedge outclk, posedge GND) begin
        if (GND) out_sync_sig <= 0;
        else out_sync_sig <= FDC_Q2;
    end
    
    //assign out_sync_sig = FDC_Q3;

    always @(negedge outclk, posedge GND) begin
        if (GND) FDC_1_Q <= 0;
        else FDC_1_Q <= out_sync_sig;
    end


endmodule