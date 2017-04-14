`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// Generic multiplexer module													//
// 																				//
//////////////////////////////////////////////////////////////////////////////////


module RegMux(
    input [4:0] a,
    input [4:0] b,
    input select,
    output [4:0] out
    );
    
    assign out = (select == 0) ? a : b;
    
endmodule
