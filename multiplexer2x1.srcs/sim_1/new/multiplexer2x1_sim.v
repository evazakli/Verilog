`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2025 04:04:53 PM
// Design Name: 
// Module Name: multiplexer2x1_sim
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


module multiplexer2x1_sim;

    reg A_i, B_i, S_i;
    wire OUT_o;
    
    
    mux_2x1 dut(
        
        .A_i(A_i),
        .B_i(B_i),
        .S_i(S_i),
        .OUT_o(OUT_o)
  
    );
    
    initial begin   
        B_i=0; A_i=0; S_i=0;
        #5;
        B_i=0; A_i=0; S_i=1;
        #5;
        B_i=0; A_i=1; S_i=0;
        #5;         
        B_i=0; A_i=1; S_i=1;
        #5;
        B_i=1; A_i=0; S_i=0;
        #5;
        B_i=1; A_i=0; S_i=1;
        #5;
        B_i=1; A_i=1; S_i=0;
        #5;
        B_i=1; A_i=1; S_i=1;
        #5;      
    end
endmodule
