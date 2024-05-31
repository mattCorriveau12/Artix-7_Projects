

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
    input wire clk,
    output wire clk_1Hz,
    input wire [23:0] switches,
    output wire [3:0] sseg_anode,
    output wire [7:0] sseg_cathode,
    output wire [23:0] leds,
    output wire divided_clk
    );

wire refresh_clock;                                 
wire [1:0] refreshcounter;
wire [3:0] ONE_DIGIT;
wire [3:0] dig_cycle;
wire [3:0] not_reversed_dig_cycle;

                         

// Wrapper for clock divider
clock_divider refresh_clock_generator(             
    .clk(clk),                  
    .divided_clk(refresh_clock)
);

// Seven segment controller modules
refreshcounter refreshcounter_wrapper(              
    .refresh_clock(refresh_clock),                  
    .refreshcounter(refreshcounter)                 
);

anode_control anode_control_wrapper(                
    .refreshcounter(refreshcounter),
    .sseg_anode(sseg_anode)
);

BCD_control BCD_control_wrapper(                    
/*    .digit1(switches[3:0]),
    .digit2(switches[7:4]),
    .digit3(switches[11:8]),                       
    .digit4(switches[15:12]), */                       

    .digit1(not_reversed_dig_cycle),
    .digit2(not_reversed_dig_cycle),
    .digit3(not_reversed_dig_cycle),                       
    .digit4(not_reversed_dig_cycle),

    .refreshcounter(refreshcounter),
    .ONE_DIGIT(ONE_DIGIT)
);

BCD_to_cathodes BCD_to_cathodes_wrapper(            
    .digit(ONE_DIGIT),                               
    .sseg_cathode(sseg_cathode)
);

Switches_LEDs_Control Switches_LEDs_Control_wrapper(
    .switches(switches),
    .leds(leds)
);

oneHz_generator oneHz_generator_wrapper(
    .clk(clk),
    .clk_1Hz(clk_1Hz)
);

cycle_digits cycle_digits_wrapper(
    .clk_1Hz(clk_1Hz),
    .not_reversed_dig_cycle(not_reversed_dig_cycle)
);


endmodule
