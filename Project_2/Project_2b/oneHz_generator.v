`timescale 1ns / 1ps

module oneHz_generator(
    input clk_50MHz,       
    output wire clk_1Hz,
    output wire not_clk_1Hz
    );

    reg [25:0] counter_reg;
    reg clk_out_reg = 0;

    always @(posedge clk_50MHz) begin
        if(counter_reg == 24_999_999) begin
            counter_reg <= 0;
            clk_out_reg <= ~clk_out_reg;
        end
        else
            counter_reg <= counter_reg + 1;
         
    end

    assign clk_1Hz = clk_out_reg;
    assign not_clk_1Hz = ~clk_1Hz;

endmodule
