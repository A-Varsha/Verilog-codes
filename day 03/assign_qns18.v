`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 08:11:21
// Design Name: 
// Module Name: summa_18
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


module summa_18();
reg [3:0] acc;
initial begin
acc = 4'b0001;
while (acc < 4'b1000) begin
acc = acc + 1;
end
$display("acc = %b", acc);
end
endmodule
