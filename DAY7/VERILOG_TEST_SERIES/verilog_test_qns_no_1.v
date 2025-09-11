`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 16:59:12
// Design Name: 
// Module Name: verilog_test_qns_no_1
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


module verilog_test_qns_no_1;

integer n, i, j, k;

initial begin
    n = 5;  
    for(i = 1; i <= n; i = i + 1) begin
        for(j = i; j < n; j = j + 1)
            $write(" ");
        
        
        for(k = 1; k <= i; k = k + 1)
            $write("%0d ", i);
        
        $display(""); 
    end
    
    for(i = n-1; i >= 1; i = i - 1) begin
        for(j = n; j > i; j = j - 1)
            $write(" ");
        
        for(k = 1; k <= i; k = k + 1)
            $write("%0d ", i);
        
        $display(""); 
    end
end


endmodule













