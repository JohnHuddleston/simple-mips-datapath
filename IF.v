`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// IF secondary level module													//
// 																				//
//////////////////////////////////////////////////////////////////////////////////


module IF(
    input wire [31:0] instrAddr,
    output wire [31:0] newAddr,
    output wire [31:0] instruction
    );
    
    wire [31:0] constPC;
    
    assign constPC = 32'b00000000000000000000000000000100;

    adder adder(constPC, instrAddr, newAddr);
    InstrMem InstrMem(instrAddr, instruction);

endmodule
