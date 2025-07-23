`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 14:45:20
// Design Name: 
// Module Name: demux
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


module demux(
input s0,s1,d,
output y0,y1,y2,y3,y4,y5,y6,y7);

wire w1,w2;

not not_1(w2,s0);
not not_2(w1,s1);
and and_1(y0,w1,w2,d);
and and_2(y1,s1,w2,d);
and and_3(y2,w1,s0,d);
and and_4(y3,s0,s1,d);

and and_5(y4,w1,w2,d);
and and_6(y5,s1,w2,d);
and and_7(y6,w1,s0,d);
and and_8(y7,s0,s1,d);
endmodule
