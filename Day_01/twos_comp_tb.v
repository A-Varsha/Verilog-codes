`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 19:27:44
// Design Name: 
// Module Name: twos_comp_tb
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


module twos_comp_tb();
reg [3:0]x;
wire [3:0]y;

twos_comp dut(.x(x),
.y(y));
initial begin
x=4'b0000;
#10;
x=4'b0001;
#10;
x=4'b0010;
#10;
x=4'b0011;
#10;
x=4'b0100;
#10;
x=4'b0101;
#10;
x=4'b0110;
#10;
$finish;
end



endmodule
