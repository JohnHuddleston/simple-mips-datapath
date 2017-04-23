`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CMPEN 331 Spring 2017														//
// Code by John Huddleston (Section 2)											//
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
    	memory[108] = 32'b10001100001001000000000000001000;
    	memory[112] = 32'b10001100001001010000000000001100;
    	memory[116] = 32'b00000000010010100011000000100000;
    end

    assign dataOut = memory[readAddr];
    
endmodule
