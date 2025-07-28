`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 09:16:28 AM
// Design Name: 
// Module Name: generic_encoder
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


module generic_encoder
    #(parameter N = 8)
    (
    
    input [N-1:0] I_i,
    output [$clog2(N)-1:0] O_o

    );
    
    reg [$clog2(N)-1:0] O_reg;
    integer i;
    
    always @(*) begin
       
        O_reg = 'bx;
        
        for(i=N-1; i>=0; i = i-1) begin
            
            if(I_i[i] == 1'b1) begin
                
                O_reg = i;
                
            end
                 
        end
        
    end
    
    assign O_o = O_reg;
    
endmodule
