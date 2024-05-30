

/*                                              **** Block Diagram ***

                Switches/Buttons ---digit1,2,3,4---> BCD Control ---ONE_DIGIT---> BCD to cathodes ---> cathode [7:0]
                                                          |
                                                          |
                  |----------------->refresh counter------|
                  |                                       |
        refresh_clock 10kHz <---|                         |
                                |                         |
                                |                         |
    sys clk ---50MHz---> Clk Divider                      |    
                                                    Anode Control -------------------------------------> anode [7:0]

//                                           *** Hardware Description ***

-- clock_divider
Get clk from constraint pins
clock_divider module outputs divided_clk
refresh_clk gets divided_clk
-- refreshcounter
On refresh_clk posedge increment refreshcounter (refreshcounter is only 2 bits... counts 0,1,2,3)
-- anode_control
refreshcounter comes in from refreshcounter, counts 0,1,2,3
sseg_anode goes out to constraint pins
-- BCD_control
digit1-4 and refreshcounter come in 
as refreshcounter counts 0,1,2,3 ONE_DIGIT is assigned digit1, then digit2, then digit3, then digit4
ONE_DIGIT goes out to BCD_to_cathodes
-- BCD_to_cathodes
top passes ONE_DIGIT to digit
digit comes in from [top] (BCD_control)
digit is the digit to be displayed "0-F"
always loop ensures every time refreshcounter increments, a digit is passed into the case statement
the case statement selects the proper cathodes to display based on the digit that is passed in (only displays 0-9... defaults to default for A-F) 
??? WHEN DOES REFRESH COUNTER RESET ???
sseg_cathode goes out to [top (output wire to constraint pins)]

*/

`timescale 1ns / 1ps

module top( 
    //input wire clk_50MHz,                           //*X* My addition *X* need to tell it where clk is coming from in the constraints
    input wire clk,
    input wire [15:0] switches,
    //input wire [3:0] button,                      //swapped fo more switches
    output wire [3:0] sseg_anode,
    output wire [7:0] sseg_cathode
    );

wire refresh_clock;                                 //***Does refreshclock need an underscore?***
wire [1:0] refreshcounter;
wire [3:0] ONE_DIGIT;
//assign clk = clk_50MHz;                             //*X* My addition *X* need to tell it where clk is coming from in the constraints


// Wrapper for clock divider
clock_divider refresh_clock_generator(             // top vs module checked        //***Does refreshclock need an underscore?***
    .clk(clk),                  
    .divided_clk(refresh_clock)
);

// Seven segment controller modules
refreshcounter refreshcounter_wrapper(              // top vs module checked
    .refresh_clock(refresh_clock),                  
    .refreshcounter(refreshcounter)                 
);

anode_control anode_control_wrapper(                // top vs module checked
    .refreshcounter(refreshcounter),
    .sseg_anode(sseg_anode)
);

BCD_control BCD_control_wrapper(                    // *X* Need to Double check top vs module *X*           do we only pass inputs into a module? or do we pass outputs as well?
    .digit1(switches[3:0]),
    .digit2(switches[7:4]),
    .digit3(switches[11:8]),                       //***button*** swapped for switches
    .digit4(switches[15:12]),                        //***button*** swapped for switches
    .refreshcounter(refreshcounter),
    .ONE_DIGIT(ONE_DIGIT)
);

BCD_to_cathodes BCD_to_cathodes_wrapper(            // *X* Need to Double check top vs module *X*
    .digit(ONE_DIGIT),                               // Pass ONE_DIGIT to digit (or other way around??)
    .sseg_cathode(sseg_cathode)
);

endmodule
