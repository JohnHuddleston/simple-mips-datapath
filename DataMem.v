`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CMPEN 331 Spring 2017														//
// Code by John Huddleston (Section 2)											//
// Data memory module															//
// 																				//
//////////////////////////////////////////////////////////////////////////////////

module DataMem(
	input [31:0] readAddr, writeAddr, dataIn,
	input enableWrite,
	output [31:0] dataOut
	);

reg [7:0] mem [255:0];

assign dataOut = mem[readAddr];

initial begin
	mem[0] = 'hA00000AA;
	mem[1] = 'h10000011;
	mem[2] = 'h20000022;
	mem[3] = 'h30000033;
	mem[4] = 'h40000044;
	mem[5] = 'h50000055;
	mem[6] = 'h60000066;
	mem[7] = 'h70000077;
	mem[8] = 'h80000088;
	mem[9] = 'h90000099;
end

always @ (*)
	begin
		if (enableWrite)
			begin
			mem[writeAddr] = dataIn;
			end
	end