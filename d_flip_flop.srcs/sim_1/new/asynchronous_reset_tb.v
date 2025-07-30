`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 11:44:54 AM
// Design Name: 
// Module Name: asynchronous_reset_tb
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


module asynchronous_reset_tb;

    reg clk; 
    reg D; 
    reg reset_n;
    wire Q;
    
    
    asynchronous_reset tb (
    
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
        reset_n = 1'b0;
        D = 1'b1;
        #1;
        reset_n = 1'b1;
        #2;
        reset_n = 1'b1;
        D = 1'b0;
        #1;
        D = 1'b1;
        reset_n = 1'b0;
        #2
        reset_n = 1'b1;
        #1;
        D = 1'b1;
        #2;
        D = 1'b0;
        #1;
        D = 1'b1;
        reset_n = 1'b0;
        #2;
        reset_n = 1'b1;
        D = 1'b1;
        #4;
        D = 1'b0;
        #2;
        reset_n = 1'b0;
        #3;
        D = 1'b1;
        #5;
        D = 1'b0;
        reset_n = 1'b1;
        #3;
        reset_n = 1'b0;
        D = 1'b1;
        #1;
        reset_n = 1'b1;
        #2;
        reset_n = 1'b1;
        D = 1'b0;
        #1;
        D = 1'b1;
        reset_n = 1'b0;
        #2
        reset_n = 1'b1;
        #1;
        D = 1'b1;
        #2;
        D = 1'b0;
        #1;
        D = 1'b1;
        reset_n = 1'b0;
        #2;
        reset_n = 1'b1;
        D = 1'b1;
        #4;
        D = 1'b0;
        #2;
        reset_n = 1'b0;
        #3;
        D = 1'b1;
        #5;
        D = 1'b0;
        reset_n = 1'b1;
        #3;
        reset_n = 1'b0;
        D = 1'b1;
        #1;
        reset_n = 1'b1;
        #2;
        reset_n = 1'b1;
        D = 1'b0;
        #1;
        D = 1'b1;
        reset_n = 1'b0;
        #2
        reset_n = 1'b1;
        #1;
        D = 1'b1;
        #2;
        D = 1'b0;
        #1;
        D = 1'b1;
        reset_n = 1'b0;
        #2;
        reset_n = 1'b1;
        D = 1'b1;     
        reset_n = 1'b0;
        #2
        reset_n = 1'b1;
        #1;
        D = 1'b1;
        #2;
        D = 1'b0;
        #1;
        D = 1'b1;
        reset_n = 1'b0;
        #2;
        reset_n = 1'b1;
        D = 1'b1;
        #2;
        reset_n = 1'b1;
        D = 1'b1;     
        reset_n = 1'b0;
        #2
        reset_n = 1'b1;
        #1;
        D = 1'b1;
        #2;
        D = 1'b0;
        #1;
        D = 1'b1;
        reset_n = 1'b0;
        #2;
        #2;
        D = 1'b0;
        #1;
        D = 1'b1;
        reset_n = 1'b0;
        #2;
        reset_n = 1'b1;
        D = 1'b1;
        #4;
        D = 1'b0;
        #2;
        reset_n = 1'b0;
        #3;
        D = 1'b1;
        #5;
        D = 1'b0;
        reset_n = 1'b1;
        #3;
        reset_n = 1'b0;
        D = 1'b1;
        #1;
        reset_n = 1'b1;
        #2;
        reset_n = 1'b1;
        D = 1'b0;
        #1;
        D = 1'b1;
        reset_n = 1'b0;
        #2
        reset_n = 1'b1;
        #1;
        D = 1'b1;
        #2;

        $finish;
        
    end 

endmodule
