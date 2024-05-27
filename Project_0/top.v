`timescale 1ns / 1ps

module top(
    //input switch1
    input switch2,
    output led5,
    output led6
);
    
   // assign led5 = switch1;
    assign led6 = switch2;
    assign led5 = ~switch2;
    
endmodule
