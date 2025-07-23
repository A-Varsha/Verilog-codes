`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 10:58:56
// Design Name: 
// Module Name: tri_state_buffer
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


module tri_state_buffer(
output f,
input x,y,s);

assign f=(s==0)?x:1'bz;
assign f=(s==1)?y:1'bz;
endmodule
