`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CMPEN 331 Spring 2017														//
// Code by John Huddleston (Section 2)											//
// Arithmetic logic unit														//
// 																				//
//////////////////////////////////////////////////////////////////////////////////

modue alu(
	input [31:0] a, b,
	input [3:0] contr,
	output [31:0] out
	);

always @ (*)