`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 08:08:52
// Design Name: 
// Module Name: gate_level_fa
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


module gate_level_fa(
output [3:0] sum,
output carry,
input [3:0] a,b,
input c);
assign {carry,sum}=a|b|c;

endmodule
