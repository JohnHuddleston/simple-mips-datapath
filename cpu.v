`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// CMPEN 331 Spring 2017                                                        //
// Code by John Huddleston (Section 2)                                          //
// Top level module		                                                        //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////


module cpu(
    input clk
    );

	// Wires for Lab 4 components
	wire [31:0] instrAddr, newInstrAddr, instr2reg, instr, tempWData, regOutA, regOutB, extended;
	wire tempWReg, wreg, m2reg, wmem, aluimm;
	wire[3:0] aluc;
	wire [4:0] RdRt, tempWAddr;

	// Wires for EXE and EXE/MEM register components
	wire wreg2exe, m2reg2exe, wmem2exe, aluimm2exe, wreg2exemem, m2reg2exemem, wmem2exemem;
	wire [3:0] aluc2exe;
	wire [4:0] RdRt2exe, RdRt2exemem;
	wire [31:0] regOutA2exe, regOutB2exe, extended2exe, aluresult2exemem, qb2exemem;

	// Wires for MEM and MEM/WB components
	wire wreg2mem, m2reg2mem, wmem2mem, wreg2memwb, m2reg2memwb;
	wire [4:0] RdRt2mem, RdRt2memwb;
	wire [31:0] aluresult2mem, qb2mem, aluresult2memwb, dataout2memwb;

	PCRegister PCRegister(clk, newInstrAddr, instrAddr);
	IF IF(instrAddr, newInstrAddr, instr2reg);
	IFIDRegister IFIDRegister(instr2reg, instr, clk);
	ID ID(instr, tempWData, clk, tempWReg, tempWAddr, wreg, m2reg, wmem, aluc, aluimm, RdRt, regOutA, regOutB, extended);
	IDEXERegister IDEXERegister(wreg, m2reg, wmem, aluimm, clk, aluc, RdRt, regOutA, regOutB, extended, wreg2exe, 
		m2reg2exe, wmem2exe, aluimm2exe, aluc2exe, RdRt2exe, regOutA2exe, regOutB2exe, extended2exe);
	EXE EXE(wreg2exe, m2reg2exe, wmem2exe, aluimm2exe, aluc2exe, RdRt2exe, regOutA2exe, regOutB2exe, extended2exe, 
		wreg2exemem, m2reg2exemem, wmem2exemem, RdRt2exemem, qb2exemem, aluresult2exemem);
	EXEMEMRegister EXEMEMRegister(clk, wreg2exemem, m2reg2exemem, wmem2exemem, RdRt2exemem, aluresult2exemem, qb2exemem,
		wreg2mem, m2reg2mem, wmem2mem, RdRt2mem, aluresult2mem, dataout2mem);
	MEM MEM(wreg2mem, m2reg2mem, wmem2mem, RdRt2mem, aluresult2mem, qb2mem, wreg2memwb, m2reg2memwb, RdRt2memwb, 
		aluresult2memwb, dataout2memwb);
	MEMWBRegister MEMWBRegister(clk, wreg2memwb, m2reg2memwb, RdRt2memwb, aluresult2memwb, dataout2memwb);

endmodule
