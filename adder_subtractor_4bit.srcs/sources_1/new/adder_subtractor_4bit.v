`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 09:33:36 AM
// Design Name: 
// Module Name: adder_subtractor_4bit
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


module adder_subtractor_4bit(

    input [3:0] I0, I1,
    input add_sub_controller,
    output [3:0] S_o,
    output C_o,
    output overflow
   
    );
    
    wire [3:0] I0_Controlled;
    
    assign I0_Controlled = I0 ^ {4{add_sub_controller}};
    
    n_bit_ripple_carry_adder #(.N(4)) dut0(
    
        .I0(I0_Controlled),
        .I1(I1),
        .S_o(S_o),
        .C_o(C_o),
        .C_i(add_sub_controller)
        
    );
    
    assign overflow = (I1[3] & I0_Controlled[3] & ~S_o[3]) | (~I1[3] & ~I0_Controlled[3] & S_o[3]); 
    
    
    
endmodule
