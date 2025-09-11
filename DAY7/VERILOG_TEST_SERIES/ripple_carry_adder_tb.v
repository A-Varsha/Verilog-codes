`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 19:10:59
// Design Name: 
// Module Name: ripple_carry_adder_tb
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


module ripple_carry_adder_tb();
    
    reg[3:0]A, B;
    reg Cin;
    
    wire [3:0] Sum;
    wire       Cout;

    ripple_carry_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $display("Time\tA\tB\tCin\t|\tSum\tCout");
        
        $monitor("%0t\t%b\t%b\t%b\t|\t%b\t%b", 
                  $time, A, B, Cin, Sum, Cout);

        
        A=4'b0000; B=4'b0000; Cin=0; #10;  
        A=4'b0101; B=4'b0011; Cin=0; #10;  
        A=4'b1111; B=4'b0001; Cin=0; #10;  
        A=4'b1001; B=4'b0110; Cin=1; #10;  
        A=4'b1010; B=4'b1010; Cin=0; #10; 
        A=4'b1111; B=4'b1111; Cin=1; #10; 

        $finish;
    end
endmodule


