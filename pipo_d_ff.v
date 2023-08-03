`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 03.08.2023 06:22:37
// Design Name: 
// Module Name: pipo_d_ff
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


module pipo_d_ff(input [3:0]d,
            input clk,
            output [3:0]q
            );
        
    d_flip_flop F1(clk, d[0], q[0]);
    d_flip_flop F2(clk, d[1], q[1]);
    d_flip_flop F3(clk, d[2], q[2]);
    d_flip_flop F4(clk, d[3], q[3]);
         
endmodule
