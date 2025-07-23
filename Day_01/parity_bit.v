`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 09:15:09
// Design Name: 
// Module Name: parity_bit
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


module parity_bit(
input [8:0]x,
output out,cp);
wire c,d,e,f,g,h,i;
xor xor_1(c,x[0],x[1]);
xor xor_2(d,x[2],x[3]);
xor xor_3(e,x[4],x[5]);
xor xor_4(f,x[6],x[7]);
xor xor_5(g,c,d);
xor xor_6(h,e,f);
xor xor_7(i,g,h);
xor xor_8(cp,x[8],i);
xnor xnor_1(out,x[8],i);


endmodule
