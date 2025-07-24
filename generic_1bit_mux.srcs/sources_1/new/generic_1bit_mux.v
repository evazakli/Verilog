`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 04:51:24 PM
// Design Name: 
// Module Name: generic_1bit_mux
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


module generic_1bit_mux
    #(parameter N = 4)
    (
    
    input [(N-1):0] I_i,
    input [$clog2(N)-1:0] S_i,
    output O_o
       
    );
    
    reg O_o_reg;
    integer i;
    
    always @(*) begin 
        O_o_reg = 1'b1;
        for(i=0;i<N;i=i+1) begin
            if(i==S_i) begin             
                O_o_reg = I_i[i];
            end        
        end 
    end 
    
    assign O_o = O_o_reg;
    
endmodule
