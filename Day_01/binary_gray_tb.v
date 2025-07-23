`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 18:02:10
// Design Name: 
// Module Name: binary_gray_tb
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


module binary_gray_tb();
reg[3:0] binary;
wire [3:0] gray;
binary_gray dut(.binary(binary),
.gray(gray));
initial begin
binary =4'b0000;
#10;
binary =4'b0001;
#10;
binary =4'b0010;
#10;
binary =4'b0011;
#10;
binary =4'b0100;
#10;
binary =4'b0101;
#10;
binary =4'b0110;
#10;
binary =4'b0111;
#10;
binary =4'b1000;
#10;
$finish;
end
endmodule
