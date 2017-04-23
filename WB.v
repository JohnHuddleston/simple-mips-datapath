`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CMPEN 331 Spring 2017														//
// Code by John Huddleston (Section 2)											//
// WB secondary-level module													//
// 																				//
//////////////////////////////////////////////////////////////////////////////////

module WB(
	input wregin, m2reg,
	input [4:0] RdRtin,
	input [31:0] aluresult, memdata,
	output wregout,
	output [4:0] RdRtout,
	output [31:0] writedata
	);

assign wregout = wregin;
assign RdRtout = RdRtin;

FullMux FullMux(aluresult, memdata, m2reg, writedata);

endmodule