`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 01:31:44 PM
// Design Name: 
// Module Name: ripple_carry_adder_4bit_tb
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


module ripple_carry_adder_4bit_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg C_i;
    wire [3:0] S;
    wire C_o;
    
   
   ripple_carry_adder_4bit tb(
        
        .A(A),
        .B(B),
        .C_i(C_i),
        .S(S),
        .C_o(C_o)
          
   ); 
     
    
    initial begin
    
        A   = 4'b0000;
        B   = 4'b0101;
        C_i = 1'b0;
        #5;
        A   = 4'b0000;
        B   = 4'b1010;
        C_i = 1'b0;
        #5;
        A   = 4'b1111;
        B   = 4'b1111;
        C_i = 1'b0;
        #5;
        A   = 4'b1111;
        B   = 4'b1111;
        C_i = 1'b1;
        #5;
        A   = 4'b0110;
        B   = 4'b1001;
        C_i = 1'b1;
        #5;
        A   = 4'b0101;
        B   = 4'b0100;
        C_i = 1'b0;
        #5;
        A   = 4'b1001;
        B   = 4'b0010;
        C_i = 1'b1;
        #5;
        A   = 4'b1010;
        B   = 4'b0110;
        C_i = 1'b0;
        #5;
        $finish;
            

    end
        

 
endmodule
