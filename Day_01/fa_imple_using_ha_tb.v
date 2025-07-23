`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 21:58:38
// Design Name: 
// Module Name: fa_imple_using_ha_tb
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


module fa_imple_using_ha_tb();
reg x,y,z;
wire sum,carry;
fa_imple_using_2ha u1(.x(x),
.y(y),
.z(z),
.sum(sum),
.carry(carry)
);

initial begin
x=0;y=0;z=0;
#10;
x=0;y=0;z=1;
#10;
x=0;y=1;z=0;
#10;
x=0;y=1;z=1;
#10;
x=1;y=0;z=0;
#10;
x=1;y=0;z=1;
#10;
x=1;y=1;z=0;
#10;
x=1;y=1;z=1;
#10;
$finish;
end 
endmodule


 
