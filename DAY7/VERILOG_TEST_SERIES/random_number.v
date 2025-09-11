`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2025 14:38:03
// Design Name: 
// Module Name: random_number
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


module random_number(
output  reg signed [7:0]a
    );
        integer i;

    initial begin
    for(i=0;i<4;i=i+1)begin
   
    a=$urandom_range(-100,100);
     $display("%d",a);
    end
    end
endmodule
