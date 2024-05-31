/*      *** Hardware Description ***

*/

//`timescale 1ns / 1ps

module clock_divider(
    input wire clk,                             //50MHz (Datasheet)
    output reg divided_clk =0                   //for example, 1Hz +> 0.5s ON and 0.5s OFF
    );

    localparam div_value = 4999;                //10 kHz (confimed via test bench)

    //counter
    integer counter_value = 0;

    always@ (posedge clk )                      //sensitivity lst //rising edge 0-1

    begin
        if (counter_value == div_value)         //div_value = 4999  - count to 5000 at 50MHz (should take 200us)
            counter_value <= 0;                 //reset value
        else
            counter_value <= counter_value + 1; //count up
    end

    // divide clock // divided_clk output signal stays high for 1000, then goes low for 1000
    always@ (posedge clk ) 

    begin   
        if (counter_value == div_value)
            divided_clk <= ~divided_clk;        //flip the signal - since it flips every 100ms, that means we flash 5x/sec (testbench confirms T = 200us)
        else   
            divided_clk <=  divided_clk;        //keep signal value the same
    end

endmodule
