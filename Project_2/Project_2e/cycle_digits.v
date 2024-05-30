`timescale 1ns / 1ps


module cycle_digits(
    input wire clk_1Hz,
    output reg [3:0] dig_cycle
);

always@(posedge clk_1Hz)                    // *** WORKING ***
        begin
            if(dig_cycle == 15) 
                begin
                    dig_cycle <= 0; 
                end

            else
            dig_cycle <= dig_cycle + 1;
        end

    
endmodule
