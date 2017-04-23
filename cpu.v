`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// CMPEN 331 Spring 2017                                                        //
// Code by John Huddleston (Section 2)                                          //
// New CPU top-level module                                                     //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////

module cpu(
	input clk
	);

wire e0, f0, g0, i0, n0, o0, p0, r0, w0, x0, y0, c1, d1, e1, i1, j1, n1, o1, s1;
wire [3:0] h0, q0;
wire [4:0] j0, s0, z0, f1, k1, p1, t1;
wire [31:0] a0, b0, c0, d0, k0, l0, m0, t0, u0, v0, a1, b1, g1, h1, l1, m1, q1, r1, u1;

PCRegister PCRegister(clk, b0, a0);
IF IF(a0, b0, c0);
IFIDRegister IFIDRegister(c0, d0, clk);
ID ID(d0, u1, clk, s1, t1, e0, f0, g0, h0, i0, j0, k0, l0, m0);
IDEXERegister IDEXERegister(e0, f0, g0, i0, clk, h0, j0, k0, l0, m0, n0, o0, p0, r0, q0, s0, t0, u0, v0);
EXE EXE(n0, o0, p0, r0, q0, s0, t0, u0, v0, w0, x0, y0, z0, a1, b1);
EXEMEMRegister EXEMEMRegister(clk, w0, x0, y0, z0, a1, b1, c1, d1, e1, f1, g1, h1);
MEM MEM(c1, d1, e1, f1, g1, h1, i1, j1, k1, l1, m1);
MEMWBRegister MEMWBRegister(clk, i1, j1, k1, l1, m1, n1, o1, p1, q1, r1);
WB WB(n1, o1, p1, q1, r1, s1, t1, u1);

endmodule