`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 04:51:29 PM
// Design Name: 
// Module Name: half_adder
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


module half_adder(
    
        input [1:0] I_i,
        output sum_o,
        output carry_o

    );
        xor (sum_o, I_i[0],I_i[1]);
        and (carry_o, I_i[0],I_i[1]);  
        
endmodule
