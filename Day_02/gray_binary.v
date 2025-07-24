`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 22:40:40
// Design Name: 
// Module Name: gray_binary
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


module gray_binary(
input[3:0] gray, 
output[3:0] binary);
assign binary[3]=gray[3];
assign binary[2]=binary[3]^gray[2];
assign binary[1]=binary[2]^gray[1];
assign binary[0]=binary[1]^gray[0];
endmodule
