
/*      *** Hardware Description ***
refreshcounter comes in from refreshcounter, counts 0,1,2,3
sseg_anode goes out to [top (output wire to constraint pins)]
*/

module anode_control(
    input [1:0] refreshcounter,
    output reg [3:0] sseg_anode = 0
);

always@(refreshcounter)
begin
   case (refreshcounter)
    2'b00:
        sseg_anode = 4'b1110;     // digit 1 ON (right digit)
    2'b01:
        sseg_anode = 4'b1101;     // digit 2 ON 
    2'b10:
        sseg_anode = 4'b1011;     // digit 3 ON 
    2'b11:
        sseg_anode = 4'b0111;     // digit 4 ON (left digit)
     
   endcase 
end

endmodule
