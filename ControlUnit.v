`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CMPEN 331 Spring 2017														//
// Code by John Huddleston (Section 2)											//
// Control unit module															//
// 																				//
//////////////////////////////////////////////////////////////////////////////////
//																				//
// NOTE: Not all instructions are implemented yet.  Lab 4 requires only LW to	//
//           be defined, but I have defined control outputs for a few other		//
//           (simple) instructions to be prepared.								//
//																				//
//////////////////////////////////////////////////////////////////////////////////


module ControlUnit(
    input [5:0] op, func,
    output reg regRt, wreg, m2reg, wmem, aluimm,
    output reg [3:0] aluc
    );

always @ (*) begin

	// Deriving the necessary control signals, starting by identifying the opcode
	case(op)

	// R-format instruction
	6'b000000: begin

		// Deriving r-format control signals from the function codes
		case(func)

		// ADD
		6'b100000: begin
			aluc = 4'b0010;
			wreg = 1;
			m2reg = 0;
			aluimm = 0;
			regRt = 0;
			wmem = 0;
		end

		// SUB
		6'b100010: begin
			aluc = 4'b0110;
			wreg = 1;
			m2reg = 0;
			aluimm = 0;
			regRt = 0;
			wmem = 0;
		end

		// AND
		6'b100100: begin
			aluc = 4'b0000;
			wreg = 1;
			m2reg = 0;
			aluimm = 0;
			regRt = 0;
			wmem = 0;
		end

		// OR
		6'b100101: begin
			aluc = 4'b0001;
			wreg = 1;
			m2reg = 0;
			aluimm = 0;
			regRt = 0;
			wmem = 0;
		end

		// XOR
		6'b100110: begin
			aluc = 4'b0010;
			wreg = 1;
			m2reg = 0;
			aluimm = 0;
			regRt = 0;
			wmem = 0;
		end

		// SLL
		// SRL
		// SRA
		// JR
		
		endcase

	end

	// ADDI
	// ANDI
	// ORI
	// XORI

	// LW
	6'b100011: begin
		aluc = 4'b0010;
		wreg = 1;
		m2reg = 1;
		aluimm = 1;
		regRt = 1;
		wmem = 0;
	end

	// SW
	6'b101011: begin
		aluc = 4'b0010;
		wreg = 0;
		m2reg = 0;
		aluimm = 1;
		regRt = 1;
		wmem = 1;
	end

	// BEQ
	// BNE
	// LUI
	// J
	// JAL

	default: begin
		aluc = 4'b0000;
		wreg = 0;
		m2reg = 0;
		aluimm = 0;
		regRt = 0;
		wmem = 0;
	end
	endcase

end

endmodule
