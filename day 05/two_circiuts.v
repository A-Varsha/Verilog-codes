`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2025 23:38:14
// Design Name: 
// Module Name: two_circiuts
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


module two_circiuts( 
    input [2:0] in,
    output [1:0] out );
    assign out[1] = (in[2] & in[1])|(in[2] & in[0])|(~in[2] & in[1] & in[0]);
                                     assign  out[0] = (~in[2] & ~in[1] & in[0])|(~in[2] & in[1] & ~in[0])|
                                         (in[2] & ~in[1] & ~in[0])|(in[2] & in[1] & in[0]);

endmodule

