`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CMPEN 331 Spring 2017														//
// Code by John Huddleston (Section 2)											//
// Arithmetic logic unit     													//
//    Overflow and zero outputs not yet implemented								//
// 																				//
//////////////////////////////////////////////////////////////////////////////////

module ALU(
	input [31:0] a, b,
	input [3:0] contr,
	output reg [31:0] out
	);

always @ (*) begin
	
	case(contr)

	4'b0000: begin
		out = a & b;
	end

	4'b0001: begin
		out = a | b;
	end

	4'b0010: begin
		out = a + b;
	end

	4'b0110: begin
		out = a - b;
	end

	4'b0111: begin
		if(a < b) begin
			out = 32'd1;
		end

		else begin
			out = 32'd0;
		end
	end

	4'b1100: begin
		out = ~(a | b);
	end
	
	endcase

end

endmodule