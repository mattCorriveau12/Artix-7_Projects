/*      *** Hardware Description ***

*/

//`timescale 1ns / 1ps

module clock_divider(
    input wire clk,                             //50MHz
    //input wire clk_50MHz,                       // *X*
    output reg divided_clk =0                   //1Hz +> 0.5s ON and 0.5s OFF
    );

    localparam div_value = 4999;                //10 kHz??

    //counter
    integer counter_value = 0;

    always@ (posedge clk )                      //sensitivity lst //rising edge 0-1
    //always@ (posedge clk_50MHz )                // *X*

    begin
        if (counter_value == div_value)
            counter_value <= 0;                 //reset value
        else
            counter_value <= counter_value + 1; //count up
    end

    // divide clock // divided_clk output signal stays high for 1000, then goes low for 1000
    always@ (posedge clk ) 
    //always@ (posedge clk_50MHz )                // *X*

    begin   
        if (counter_value == div_value)
            divided_clk <= ~divided_clk;        //flip the signal
        else   
            divided_clk <=  divided_clk;        //keep signal value the same
    end

endmodule
