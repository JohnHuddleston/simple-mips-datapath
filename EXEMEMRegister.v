//////////////////////////////////////////////////////////////////////////////////
//										
// EXE/MEM register module								
// 										
//////////////////////////////////////////////////////////////////////////////////

module EXEMEMRegister(
	input clk, wregin, m2regin, wmemin,
	input [4:0] RdRtin,
	input [31:0] qbin, aluresultin,
	output reg wregout, m2regout, wmemout,
	output reg [4:0] RdRtout,
	output reg [31:0] aluresultout, qbout
	);

always @ (posedge clk) begin
	wregout = wregin;
	m2regout = m2regin;
	wmemout = wmemin;
	RdRtout = RdRtin;
	aluresultout = aluresultin;
	qbout = qbin;
end

endmodule