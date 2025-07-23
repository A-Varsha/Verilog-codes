`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 19:06:45
// Design Name: 
// Module Name: full_adder
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


module full_adder(
output sum,
output carry,
input x,
input y,
input cin,
wire s1,c1,c2,c3);
xor xor_1(s1,x,y);
xor xor_2(sum,s1,cin);
and and_1(c1,x,y);
and and_2(c2,x,cin);
and and_3(c3,y,cin);
or or_1( carry,c1,c2,c3);
endmodule
