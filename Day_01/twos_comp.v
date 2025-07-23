`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 19:22:45
// Design Name: 
// Module Name: twos_comp
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


module twos_comp(
input [3:0]x,
output [3:0]y);

assign y = ~x+4'b0001;

    
endmodule
