`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 09:14:10
// Design Name: 
// Module Name: bit_decoder
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


module bit_decoder(
input [3:0]i,
output [1:0]y
    );
    
    assign y[0] = i[2]|i[3];
    assign y[1] = i[1]|i[3];
endmodule
