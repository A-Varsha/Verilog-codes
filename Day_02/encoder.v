`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 16:41:58
// Design Name: 
// Module Name: encoder
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


module encoder(
output x,y,z,
input d0,d1,d2,d3,d4,d5,d6,d7);

assign x=d1|d3|d5|d7;
assign y=d2|d3|d6|d7;
assign z=d4|d5|d6|d7;

endmodule
