
/*      *** Hardware Description ***
digit comes in from [top] (BCD_control)
digit is the digit to be displayed "0-F"
always loop ensures every time refreshcounter increments, a digit is passed into the case statement
the case statement selects the proper cathodes to display based on the digit that is passed in (only displays 0-9... defaults to default for A-F) 
??? WHEN DOES REFRESH COUNTER RESET ???
sseg_cathode goes out to [top (output wire to constraint pins)]
*/

module BCD_to_cathodes(
    input [3:0] digit,
    output reg [7:0] sseg_cathode = 0
);

always@(digit)
begin  
    case(digit)
        4'd0:
            sseg_cathode = 8'b11000000;   // zero
        4'd1:
            sseg_cathode = 8'b11111001;   // one
        4'd2:
            sseg_cathode = 8'b10100100;   // two
        4'd3:
            sseg_cathode = 8'b10110000;   // three
        4'd4:
            sseg_cathode = 8'b10011001;   // four
        4'd5:
            sseg_cathode = 8'b10010010;   // five
        4'd6:
            sseg_cathode = 8'b10000010;   // six   
        4'd7:
            sseg_cathode = 8'b11111000;   // seven
        4'd8:
            sseg_cathode = 8'b10000000;   // eight
        4'd9:
            sseg_cathode = 8'b10010000;   // nine
        4'd10:
            sseg_cathode = 8'b10001000;   // hex A
        4'd11:
            sseg_cathode = 8'b10000011;   // hex B
        4'd12:
            sseg_cathode = 8'b11000110;   // hex C 
        4'd13:
            sseg_cathode = 8'b10100001;   // hex D 
        4'd14:
            sseg_cathode = 8'b10000110;   // hex E 
        4'd15:
            sseg_cathode = 8'b10001110;   // hex F 

        // ***Add Decimal Points***    

        /*default:
            sseg_cathode = 8'b11000000;   // any other case*/
        
        //************************************//
        //********** ADD DIGITS A - F ********//
        //************************************//

    endcase
end
endmodule
