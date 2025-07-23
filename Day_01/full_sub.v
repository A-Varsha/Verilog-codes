`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 19:17:41
// Design Name: 
// Module Name: full_sub
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


module full_sub(
output diff,
output bor,
input x,
input y,
input z,
wire d1,a,w2,w3,w4);
xor xor_1(d1,x,y);
xor xor_2(diff,z,d1);
not not_1(a,x);
and and_1(w2,a,z);
and and_2(w3,a,y);
and and_3(w4,y,z);
or or_1(bor,w2,w3,w4);
endmodule
