//////////////////////////////////////////////////////////////////////////////////
//										
// MEM/WB register module								
// 										
//////////////////////////////////////////////////////////////////////////////////

module MEMWBRegister(
	input clk, wregin, m2regin,
	input [4:0] RdRtin,
	input [31:0] aluresultin, memdatain,
	output reg wregout, m2regout,
	output reg [4:0] RdRtout,
	output reg [31:0] aluresultout, memdataout
	);

always @ (posedge clk) begin
	wregout = wregin;
	m2regout = m2regin;
	RdRtout = RdRtin;
	aluresultout = aluresultin;
	memdataout = memdatain;
end

endmodule