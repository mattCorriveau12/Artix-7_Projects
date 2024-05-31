//`timescale 1ns / 1ps

/*      *** Hardware Description ***
refresh_clock comes in from [top]
refreshcounter increments until it gets reset by []
refreshcounter goes out to [anode_control]
*/

module refreshcounter(                          
    input refresh_clock,
    output reg [1:0] refreshcounter = 0
    );

    always@(posedge refresh_clock) 
        refreshcounter <= refreshcounter + 1;
endmodule
