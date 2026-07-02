`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2026 15:29:22
// Design Name: 
// Module Name: mux_4tb
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


module mux_4tb;
     reg i0,i1,i2,i3,s0,s1;
     wire Y;
     mux_4(
        .I0(i0),
        .I1(i1),
        .I2(i2),
        .I3(i3),
        .S0(s0),
        .S1(s1),
        .Y(Y)
       );
initial begin
    i0 =0;
    i1 =1;
    i2 =0;
    i3 =1;
    s0=0;s1=0;#10;
    s0=1;s1=0;#10;
    s0=0; s1=1;#10;
    s0=1;s1=1;#10;
    $finish;
end
endmodule
