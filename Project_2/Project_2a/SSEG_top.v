`timescale 1ns / 1ps

module SSEG_top(
    input wire [15:0] switches,
    output wire [7:0] sseg_cathode,
    output wire [3:0] sseg_anode
    );

    assign sseg_anode = switches[3:0]; 
    assign sseg_cathode = switches[15:8];

endmodule
