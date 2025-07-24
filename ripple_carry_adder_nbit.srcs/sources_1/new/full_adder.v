`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 04:44:29 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    
    input I0, I1, C_i,
    output S_o, C_o
    
    );
    
    wire C1, S1, C2;
    
    half_adder dut1(
    
        .I0(I0),
        .I1(I1),
        .S_o(S1),
        .C_o(C1)
 
    );
    
    half_adder dut2(
    
        .I0(S1),
        .I1(C_i),
        .S_o(S_o),
        .C_o(C2)
 
    );
    
    assign C_o = C2 | C1;
    
    
 
endmodule
