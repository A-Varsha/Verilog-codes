`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 21:36:47
// Design Name: 
// Module Name: fa_imple_using_2ha
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



module fa_imple_using_2ha(
output sum,
output carry,
input x,
input y,
input z,
wire s1,w1,w2);
xor xor_1(s1,x,y);
xor xor_2(sum,s1,z);
and and_1(w2,x,y);
and and_2(w1,s1,z);
or or_1( carry,w1,w2);
endmodule




