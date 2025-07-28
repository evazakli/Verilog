`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 08:04:07 PM
// Design Name: 
// Module Name: generic_decoder
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


module generic_decoder
    #(parameter N = 8)
    (
        input [N-1:0] I_i,
        output [2 ** N -1 : 0] O_o,
        input En

    );
    
    reg [2 ** N -1 : 0] O_reg; 

    
    always @(*) begin
    
        O_reg = 'b0; 
        
        if(En == 1) begin
 
            O_reg[I_i] = 1'b1; 
        
        end
            
        else begin
         
            O_reg= 'b0;
        
        end  
                      
    end
    
    assign O_o = O_reg;
    
endmodule
