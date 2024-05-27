`timescale 1ns / 1ps

module Switches_LEDs_Control (
    input wire [23:0] switches, // 8-bit input for switches
    output wire [23:0] leds      // 8-bit output for LEDs
);

    // Assign each switch to its corresponding LED
    assign leds = switches;

 
    

endmodule
    
    

