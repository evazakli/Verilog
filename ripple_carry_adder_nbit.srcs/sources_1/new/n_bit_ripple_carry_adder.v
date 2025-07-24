`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 04:56:21 PM
// Design Name: 
// Module Name: n_bit_ripple_carry_adder
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


module n_bit_ripple_carry_adder
    #(parameter N = 4)
    (
    input [N-1:0] I0, I1,
    output [N-1:0] S_o,
    input C_i,
    output C_o 
    );
    
    wire [N:0] C_w;
    
    generate
        
        genvar k;
        
        for(k=0 ; k<N ; k=k+1) begin
            
            full_adder dut(
            
                .I0(I0[k]),
                .I1(I1[k]),
                .C_i(C_w[k]),
                .S_o(S_o[k]),
                .C_o(C_w[k+1])
            
            );
        
        
        
        end
        
    
    
    endgenerate 
    
    
    assign C_w[0] = C_i;
    assign C_o    = C_w[N];
    
    
    
    
    
endmodule
