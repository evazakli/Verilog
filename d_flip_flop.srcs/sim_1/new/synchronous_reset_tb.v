`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 01:04:49 PM
// Design Name: 
// Module Name: synchronous_reset_tb
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


module synchronous_reset_tb;

    reg clk; 
    reg D; 
    reg reset_n;
    wire Q;
    
    
    synchronous_reset tb (
    
        .clk(clk),
        .D(D),
        .reset_n(reset_n),
        .Q(Q)

    );
    

    localparam T = 10;
    always begin
        
        clk = 1'b0;
        #(T/2);
        clk = 1'b1;
        #(T/2);
     
    end
    
    initial begin
        
        D = 1'b0;
        reset_n = 1'b1;
        #3;
        reset_n = 1'b1;
        D = 1'b1;
        #5;
        reset_n = 1'b0;
        #2;
        reset_n = 1'b1;
        #3;
        reset_n = 1'b0;
        D = 1'b0;
        #3;
        reset_n = 1'b0;
        D = 1'b1;
        #2;
        D = 1'b0;
        #1;
        reset_n = 1'b1;
        D = 1'b1;
        #4;
        reset_n = 1'b0;
        D = 1'b1;
        #4;
        D = 1'b0;
        #2;
        reset_n = 1'b1;
        #3;
        D = 1'b1;
        #5;

        $finish;
        
    end 

endmodule
