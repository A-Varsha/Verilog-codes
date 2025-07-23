`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 22:19:24
// Design Name: 
// Module Name: fs_using_2_hs
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


module fs_using_2_hs(
output d,
output b,
input x,
input y,
input z,
wire d1,w1,w2,w3,w4);

xor xor_1(d1,x,y);
xor xor_2(d,z,d1);
not not_1(w1,x);
not not_2(w3,d1);
and and_1(w2,w1,y);
and and_2(w4,w3,z);
or or_1(b,w2,w4);
endmodule


 
