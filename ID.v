`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//			                                           							//
// ID secondary-level module                              							//
// 				                                           						//
//////////////////////////////////////////////////////////////////////////////////


module ID(
    input [31:0] instruction, tempWData,
    input clk, tempWReg,
    input [4:0] tempWAddr,
    output wreg,
    output m2reg,
    output wmem,
    output [3:0] aluc,
    output aluimm,
    output [4:0] RdRt,
    output [31:0] regOutA,
    output [31:0] regOutB,
    output [31:0] extended
    );
wire regRt;

ControlUnit ControlUnit(instruction[31:26], instruction[5:0], regRt, wreg, m2reg, wmem, aluimm, aluc);
RegMux RegMux(instruction[15:11], instruction[20:16], regRt, RdRt);
SignExtender SignExtender(instruction[15:0], extended);
RegFile RegFile(clk, tempWReg, instruction[25:21], instruction[20:16], tempWAddr, tempWData, regOutA, regOutB);

endmodule
