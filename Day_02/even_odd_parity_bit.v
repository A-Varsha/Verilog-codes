`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 23:05:08
// Design Name: 
// Module Name: even_odd_parity_bit
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


module even_odd_parity_bit(
input [3:0] a,
 output even_parity,
  output odd_parity);
  wire parity = a[3]^ a[2]^a[1]^a[0];
assign odd_parity  = parity;
  assign even_parity = ~parity;

endmodule


   

