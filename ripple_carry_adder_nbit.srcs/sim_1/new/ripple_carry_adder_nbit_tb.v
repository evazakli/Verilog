`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 05:14:12 PM
// Design Name: 
// Module Name: ripple_carry_adder_nbit_tb
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


module ripple_carry_adder_nbit_tb;

        parameter N = 4;
        reg [N-1:0] I0, I1;
        wire [N-1:0] S_o;
        reg C_i;
        wire C_o;
        
        n_bit_ripple_carry_adder dut(
        
            .I0(I0),
            .I1(I1),
            .S_o(S_o),
            .C_i(C_i),
            .C_o(C_o)
        
        );
        
        initial begin
        
            I0   = 4'b0000;
            I1   = 4'b0101;
            C_i  = 1'b0;
            #5;
            I0   = 4'b0000;
            I1   = 4'b1010;
            C_i  = 1'b0;
            #5;
            I0   = 4'b1111;
            I1   = 4'b1111;
            C_i  = 1'b0;
            #5;
            I0   = 4'b1111;
            I1   = 4'b1111;
            C_i  = 1'b1;
            #5;
            I0   = 4'b0110;
            I1   = 4'b1001;
            C_i  = 1'b1;
            #5;
            I0   = 4'b0101;
            I1   = 4'b0100;
            C_i =  1'b0;
            #5;
            I0   = 4'b1001;
            I1   = 4'b0010;
            C_i  = 1'b1;
            #5;
            I0   = 4'b1010;
            I1   = 4'b0110;
            C_i =  1'b0;
            #5;
            $finish;
        
        
        
        
        
        end 
        
        
        
        
        
        
        
        

    






endmodule
