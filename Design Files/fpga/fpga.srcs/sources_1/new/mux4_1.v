`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2026 14:08:23
// Design Name: 
// Module Name: mux4_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4_1(
    input i0,i1,i2,i3,s0,s1,
    output y
    );
    wire w1,w2;
    mux2_1 m1(i0,i1,s0,w1);
    mux2_1 m2(i2,i3,s0,w2);
    mux2_1 m3(w1,w2,s1,y);
endmodule
