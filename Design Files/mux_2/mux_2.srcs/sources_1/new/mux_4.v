`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2026 14:52:13
// Design Name: 
// Module Name: mux_4
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


module mux_4(
    input I0,I1,I2,I3,S0,S1,
    output Y
    );
    wire w1, w2;
    mux_2 m1(I0,I1,S0,w1);
    mux_2 m2(I2,I3,S0,w2);
    mux_2 m3(w1,w2,S1,Y);
endmodule
