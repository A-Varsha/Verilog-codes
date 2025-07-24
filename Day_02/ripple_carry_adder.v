`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 21:30:08
// Design Name: 
// Module Name: ripple_carry_adder
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
output sum,carry,
input a,b,c);

assign sum=a^b^c;
assign carry=a&b|a&c| b&c;

endmodule

module ripple_carry_adder(
output [3:0]sum,
output carry,
input [3:0]a,
input [3:0]b,
input c);

wire c1,c2,c3;

full_adder FA0 (sum[0], c1,a[0],b[0],c);
full_adder FA1 (sum[1], c2,a[1],b[1],c1);
full_adder FA2 (sum[2], c3,a[2],b[2],c2);
full_adder FA3 (sum[3], carry,a[3],b[3],c3);


endmodule
