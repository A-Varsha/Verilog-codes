`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 08:04:28
// Design Name: 
// Module Name: summa_16
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


module summa_16();reg [3:0] x;
initial begin
x = 4'b0011;
fork
#5 x = x + 1;
#10 x = x + 2;
join
end
endmodule
