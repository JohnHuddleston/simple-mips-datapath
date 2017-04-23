`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//										
// EXE secondary-level module								
// 										
//////////////////////////////////////////////////////////////////////////////////

module EXE(
	input ewreg, em2reg, ewmem, ealuimm,
	input [3:0] ealuc,
	input [4:0] RdRtin,
	input [31:0] qa, qb, extended,
	output wregout, m2regout, wmemout,
	output [4:0] RdRtout,
	output [31:0] qbout, aluout
	);
wire [31:0] aluSelect;

assign wregout = ewreg;
assign m2regout = em2reg;
assign wmemout = ewmem;
assign RdRtout = RdRtin;
assign qbout = qb;

FullMux FullMux(qb, extended, ealuimm, aluSelect);
ALU ALU(qa, aluSelect, ealuc, aluout);

endmodule