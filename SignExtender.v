`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// CMPEN 331 Spring 2017                                                        //
// Code by John Huddleston (Section 2)                                          //
// Sign extender module                                                         //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////


module SignExtender(
    input [15:0] in,
    output reg [31:0] out
    );
    
    always @ (*)
    begin
        out <= {{16{in[15]}},in};
    end
    
endmodule
