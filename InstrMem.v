`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// Instruction memory module													//
// 																				//
//////////////////////////////////////////////////////////////////////////////////


module InstrMem(
    input [31:0] readAddr,
    output [31:0] dataOut
    );
    
    reg [31:0] memory [255:0];
    
    initial begin
    	memory[100] = 32'b10001100001000100000000000000000;
    	memory[104] = 32'b10001100001000110000000000000100;
    end

    assign dataOut = memory[readAddr];
    
endmodule
