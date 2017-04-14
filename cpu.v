`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// Top level module		                                                //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////


module cpu(
    input clk
    );

	wire [31:0] instrAddr, newInstrAddr, instr2reg, instr, tempWData, regOutA, regOutB, extended;
	wire tempWReg, wreg, m2reg, wmem, aluimm;
	wire[3:0] aluc;
	wire [4:0] RdRt, tempWAddr;

	PCRegister PCRegister(clk, newInstrAddr, instrAddr);
	IF IF(instrAddr, newInstrAddr, instr2reg);
	IFIDRegister IFIDRegister(instr2reg, instr, clk);
	ID ID(instr, tempWData, clk, tempWReg, tempWAddr, wreg, m2reg, wmem, aluc, aluimm, RdRt, regOutA, regOutB, extended);
	IDEXERegister IDEXERegister(wreg, m2reg, wmem, aluimm, clk, aluc, RdRt, regOutA, regOutB, extended);

endmodule
