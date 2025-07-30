`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 11:36:28 AM
// Design Name: 
// Module Name: asynchronous_reset
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


module asynchronous_reset(
    
        input clk, D, reset_n,
        output Q

    );
    
    reg Q_next, Q_reg;
    
    always @(negedge clk, negedge reset_n) begin
    
        if(!reset_n) begin
        
            Q_reg <= 1'b0;
        
        end
        else begin
            
            Q_reg <= Q_next;
              
        end
      
    end
    
    
    always @(*) begin
    
        Q_next = D;
    
    end
    
    assign Q = Q_reg;
    
endmodule
