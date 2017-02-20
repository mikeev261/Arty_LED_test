`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2017 04:45:16 PM
// Design Name: 
// Module Name: tb_top
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


module tb_top();
    
    reg sclk;
    logic [3:0] btn;   
    initial begin
         sclk = 1'b0;
         btn = 'd0; 
         #12; 
         btn[0] = 'b0001; 
         #23; 
         btn[0] = 'b0000; 
         #100;  
         #12; 
         btn[0] = 'b0001; 
         #23; 
         btn[0] = 'b0000; 
         #100;  
         btn[0] = 'b0001; 
         #23; 
         btn[0] = 'b0000; 
    end
        
    always sclk = #5 ~sclk;
    
    
    
    led_top led_top(.sclk(sclk), 
                    .btn(btn));
    


endmodule
