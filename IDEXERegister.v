`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CMPEN 331 Spring 2017														//
// Code by John Huddleston (Section 2)											//
// ID/EXE register module														//
// 																				//
//////////////////////////////////////////////////////////////////////////////////


module IDEXERegister(
    input wreg, m2reg, wmem, aluimm, clk,
    input [3:0] aluc,
    input [4:0] mux,
    input [31:0] regOutA, regOutB, extended,
    output reg ewreg, em2reg, ewmem, ealuimm,
    output reg [3:0] ealuc,
    output reg [4:0] emux,
    output reg [31:0] eRegOutA, eRegOutB, eExtended
    );

	//reg wregMem, m2regMem, wmemMem, aluimmMem;
	//reg [3:0] alucMem;
	//reg [4:0] muxMem;
	//reg [31:0] regOutAMem, regOutBMem, extendedMem;

//always @ (posedge clk)
//begin
//	wregMem = wreg;
//	m2regMem = m2reg;
//	wmemMem = wmem;
//	aluimmMem = aluimm;
//	alucMem = aluc;
//	muxMem = mux;
//	regOutAMem = regOutA;
//	regOutBMem = regOutB;
//	extendedMem = extended;	
//end

//always @ (negedge clk)
//begin
//	ewreg = wregMem;
//	em2reg = m2regMem;
//	ewmem = wmemMem;
//	ealuimm = aluimmMem;
//	ealuc = alucMem;
//	emux = muxMem;
//	eRegOutA = regOutAMem;
//	eRegOutB = regOutBMem;
//	eExtended = extendedMem;
//end

always @ (posedge clk)
begin
	ewreg = wreg;
	em2reg = m2reg;
	ewmem = wmem;
	ealuimm = aluimm;
	ealuc = aluc;
	eRegOutA = regOutA;
	eRegOutB = regOutB;
	eExtended = extended;
	emux = mux;
end

endmodule
