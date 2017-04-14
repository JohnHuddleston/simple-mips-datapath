`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// IF/ID register module														//
// 																				//
//////////////////////////////////////////////////////////////////////////////////


module IFIDRegister(
    input [31:0] instrIn,
    output reg [31:0] instrOut,
    input clk
    );

	reg [31:0] mem;
    
    always @ (posedge clk)
    begin
        mem = instrIn;
    end

    always @ (negedge clk)
    begin
    	instrOut = mem;
    end
    
endmodule
