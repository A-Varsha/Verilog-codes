`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 19:09:40
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg x,y,cin;
wire sum,carry;
full_adder u1(.x(x),
.y(y),
.cin(cin),
.sum(sum),
.carry(carry)
);

initial begin
x=0;y=0;cin=0;
#10;
x=0;y=0;cin=1;
#10;
x=0;y=1;cin=0;
#10;
x=0;y=1;cin=1;
#10;
x=1;y=0;cin=0;
#10;
x=1;y=0;cin=1;
#10;
x=1;y=1;cin=0;
#10;
x=1;y=1;cin=1;
#10;
$finish;
end 
endmodule
