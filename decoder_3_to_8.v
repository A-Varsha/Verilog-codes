`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 10:47:15
// Design Name: 
// Module Name: decoder_3_to_8
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


module decoder_3_to_8(
input x,y,z,
output d0,d1,d2,d3,d4,d5,d6,d7,
wire w1,w2,w3);

not not_1(w1,x);
not not_2(w2,y);
not not_3(w3,z);
and and_1(d0,w1,w2,w3);
and and_2(d1,w1,w2,z);
and and_3(d2,w1,y,w3);
and and_4(d3,w1,y,z);
and and_5(d4,x,w2,w3);
and and_6(d5,x,w2,z);
and and_7(d6,x,y,w3);
and and_8(d7,x,y,z);

  
endmodule



