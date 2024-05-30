
/*      *** Hardware Description ***
digit1-4 and refreshcounter come in 
as refreshcounter counts 0,1,2,3 ONE_DIGIT is assigned digit1, then digit2, then digit3, then digit4
ONE_DIGIT goes out to [top] 
*/

`timescale 1ns / 1ps

module BCD_control(
    input [3:0] digit1, // right digit // ones
    input [3:0] digit2, // tens
    input [3:0] digit3, // hundreds
    input [3:0] digit4, // left digit // thousands
    input [1:0] refreshcounter,
    output reg [3:0] ONE_DIGIT = 0  //chose which input digit to be displayed
);

always@(refreshcounter)
begin
   case (refreshcounter)
    2'd0:
        ONE_DIGIT = digit1;     // digit 1 value (right digit)
    2'd1:
        ONE_DIGIT = digit2;     // digit 2 value 
    2'd2:
        ONE_DIGIT = digit3;     // digit 3 value 
    2'd3:
        ONE_DIGIT = digit4;     // digit 4 value (left digit)
     
   endcase 
end


endmodule