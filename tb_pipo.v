`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 03.08.2023 06:25:56
// Design Name: 
// Module Name: tb_pipo
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


module tb_pipo;
    reg [3:0]d;
    reg clk;
    wire [3:0] q; 
    
    pipo_d_ff DUT(.d(d),
                  .clk(clk),
                  .q(q)
                  );
                  
      initial begin
        clk = 0;
        d = 4'b0001;
        #10
        d = 4'b0010;
        #10
        d = 4'b0100;
        #10
        d = 4'b1000;
        #10
        d = $random;
        #5 $stop;
      end         
           
     always #5 clk = ~clk;
     
endmodule
