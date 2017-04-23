`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CMPEN 331 Spring 2017														//
// Code by John Huddleston (Section 2)											//
// Register file module															//
// 																				//
//////////////////////////////////////////////////////////////////////////////////


module RegFile(
	input clk, enableWrite,
    input [4:0] addrA, addrB, writeAddr,
    input [31:0] writeData, 
    output [31:0] dataOutA, dataOutB
    );

reg [31:0] regs [31:0];

initial begin
	regs[0] = 32'd0;
	regs[1] = 32'd0;
	regs[2] = 32'd0;
	regs[3] = 32'd0;
	regs[4] = 32'd0;
	regs[5] = 32'd0;
	regs[6] = 32'd0;
	regs[10] = 32'd0;
end

assign dataOutA = regs[addrA];
assign dataOutB = regs[addrB];

always @ (posedge clk)
	begin
		if (enableWrite)
			regs[writeAddr] <= writeData;
	end

endmodule
