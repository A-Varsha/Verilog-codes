`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2025 13:54:57
// Design Name: 
// Module Name: verilog_qns_no_10
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


module verilog_qns_no_10();
integer a;
integer random_number=4;
initial begin
repeat (10) begin
a=($random(random_number)% 201)-100;
$display("random_number: %0d",random_number);
end
end
endmodule

