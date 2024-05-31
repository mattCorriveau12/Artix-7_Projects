`timescale 1ns / 1ps


module cycle_digits(
    input wire clk_1Hz,
    //reg [3:0] dig_cycle,
    output reg [3:0] not_reversed_dig_cycle
);

//reg [3:0] not_reversed_dig_cycle;
reg [3:0] dig_cycle;

//assign reg [3:0] dig_cycle = 0; 

always @(*)
    begin
        not_reversed_dig_cycle = ~{ dig_cycle[0], dig_cycle[1], dig_cycle[2], dig_cycle[3] };
    end

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
