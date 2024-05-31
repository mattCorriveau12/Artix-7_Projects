`timescale 1ns / 1ps

module Select_OpCode(
    input wire [23:0] switches,
    output reg [3:0] OpCode
    );

reg [3:0] n_OpCode;



always @(*)
    begin
        OpCode = n_OpCode;        // reverses nr_OpCode
    end

always @(*)          // nr : not_reversed
    begin
        case(switches[19:16])
            4'b0000: n_OpCode = 4'b0000; // 0 - Output Switches to LEDs and 7-segment displays 
            4'b0001: n_OpCode = 4'b0001; // 1 - Lamps Test
            4'b0010: n_OpCode = 4'b0010; // 2 - Cycle Digits 0-F and LEDs count (ignore switches)
            4'b0011: n_OpCode = 4'b0011; // 3 - Addition 
            4'b0100: n_OpCode = 4'b0100; // 4 - Subtraction 
            4'b0101: n_OpCode = 4'b0101; // 5 - Multiplication 
            4'b0110: n_OpCode = 4'b0110; // 6 - Division 
            4'b0111: n_OpCode = 4'b0111; // 7 - ShiftL
            4'b1000: n_OpCode = 4'b1000; // 8 - ShiftR
            4'b1001: n_OpCode = 4'b1001; // 9 - AND
            4'b1010: n_OpCode = 4'b1010; // 10 - OR
            4'b1011: n_OpCode = 4'b1011; // 11 - XOR
            4'b1100: n_OpCode = 4'b1100; // 12 - NOT
            4'b1101: n_OpCode = 4'b1101; // 13 - NAND
            4'b1110: n_OpCode = 4'b1110; // 14 - NOR
            4'b1111: n_OpCode = 4'b1111; // 14 - XNOR 
        endcase
    end

endmodule


