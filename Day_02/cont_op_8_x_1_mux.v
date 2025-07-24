`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 07:22:19
// Design Name: 
// Module Name: cont_op_8_x_1_mux
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


module cont_op_8_x_1_mux(
input i0,i1,i2,i3,i4,i5,i6,i7,
input [2:0]s,
output y);

assign y = (s == 3'b000)?i0:
(s == 3'b001)?i1:
(s == 3'b010)?i2:
(s == 3'b011)?i3:
(s == 3'b100)?i4:
(s == 3'b101)?i5:
(s == 3'b110)?i6:
i7;

endmodule



