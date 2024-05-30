`timescale 1ns / 1ps

module Switches_LEDs_Control (
    input wire [23:0] switches, // 3x 8-bit input for switches (Data Register 'A' input, Data Register 'B' input, Op Code 'C' input)
    output wire [23:0] leds      // 3x 8-bit output for LEDs (Status of Register A, B, and C)
    //Future Work - output wire [31:24] leds // additional 8-bit output for LEDs (Operation Output, ex. ALU output)
);

    // Assign each switch to its corresponding LED
    assign leds = switches;

 
    

endmodule
    
    

