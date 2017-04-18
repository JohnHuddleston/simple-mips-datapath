//////////////////////////////////////////////////////////////////////////////////
//										
// MEM secondary-level module								
// 										
//////////////////////////////////////////////////////////////////////////////////

module MEM(
	input wregin, m2regin, wmemin,
	input [4:0] RdRtin,
	input [31:0] aluresult, qb,
	output wregout, m2regout,
	output [4:0] RdRtout,
	output [31:0] aluresultout, dataout
	);

assign wregout = wregin;
assign m2regout = m2regin;
assign aluresultout = aluresult;
assign RdRtout = RdRtin;

DataMem DataMem(aluresult, aluresult, qb, wmemin, dataout);

endmodule