`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 08:08:11
// Design Name: 
// Module Name: summa_17
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


module summa_17();
reg [3:0] sum;
integer i;
initial begin
sum = 4'b0000;
for (i = 0; i < 4; i = i + 1) begin
sum = sum + i;
end
$display("i = %0d, sum = %b", i, sum);
end
endmodule
