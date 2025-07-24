`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 09:55:44 AM
// Design Name: 
// Module Name: multiplexer4x1_tb
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


module multiplexer4x1_tb;
    reg I0_i, I1_i, IA_i, IB_i, S0_i, S1_i;
    wire Out_o;
    
    multiplexer4x1 dut(
    
        .I0_i(I0_i),
        .I1_i(I1_i),
        .IA_i(IA_i),
        .IB_i(IB_i),
        .S0_i(S0_i), 
        .S1_i(S1_i),
        .Out_o(Out_o)
        
    );
    
    initial begin
    
        I0_i = 0; I1_i= 0; IA_i = 0; IB_i = 1; S0_i = 0 ; S1_i = 0;
        #5;
        I0_i = 0; I1_i= 0; IA_i = 1; IB_i = 0; S0_i = 0 ; S1_i = 1;
        #5;
        I0_i = 0; I1_i= 1; IA_i = 0; IB_i = 1; S0_i = 1 ; S1_i = 0;
        #5;
        I0_i = 0; I1_i= 1; IA_i = 1; IB_i = 0; S0_i = 1 ; S1_i = 1;
        #5;
        I0_i = 1; I1_i= 0; IA_i = 0; IB_i = 1; S0_i = 0 ; S1_i = 0;
        #5;
        I0_i = 1; I1_i= 0; IA_i = 1; IB_i = 0; S0_i = 0 ; S1_i = 1;
        #5;
        I0_i = 1; I1_i= 1; IA_i = 0; IB_i = 1; S0_i = 1 ; S1_i = 0;
        #5;
        I0_i = 1; I1_i= 1; IA_i = 1; IB_i = 0; S0_i = 1 ; S1_i = 1;

 
        $finish;
        

    end

endmodule
