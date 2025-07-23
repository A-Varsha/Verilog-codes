`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 22:35:23
// Design Name: 
// Module Name: fs_imple_2_hs_tb
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


module fs_imple_2_hs_tb();
reg x,y,z;
wire d,b;
fs_using_2_hs u1(.x(x),
.y(y),
.z(z),
.d(d),
.b(b)
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



    
