`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// CMPEN 331 Spring 2017                                                        //
// Code by John Huddleston (Section 2)                                          //
// Program counter module                                                       //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////


module PCRegister(
    input clk,
    input [31:0] newAddrIn,
    output reg [31:0] addrOut
    );
    
    //reg [31:0] mem;

    //initial begin
    //    mem = 32'b00000000000000000000000001100100;
    //end
    
    //always @ (posedge clk or posedge reset)
    //begin
    //    if (reset) begin
    //        mem = 32'b00000000000000000000000001100100;
    //    end 
    //    else begin
    //        mem = newAddrIn;
    //    end
    //end

    //always @ (negedge clk)
    //begin
    //    addrOut = mem;
    //end
    
    initial begin
        addrOut = 32'b00000000000000000000000001100100;
    end

    always @ (posedge clk)
    begin
        addrOut = newAddrIn;
    end
    
endmodule
