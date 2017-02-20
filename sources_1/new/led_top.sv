`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Mike Evans
// 
// Create Date: 01/15/2017 09:34:59 PM
// Design Name: Arty LED Test Top Module
// Module Name: led_top
// Project Name: Arty LED Test 
// Target Devices: Digilient Arty Dev Board
// Tool Versions: Vivado 2016.4
// Description: Top Level Module of Arty LED Test
// 
// Dependencies: Arty_sw_btn_led.xdc (constraints file, 1/1)
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module led_top(
    input resetn,
    input sclk,
    input [3:0] sw,
    input [3:0] btn,
    output logic [3:0] led,
    output logic led0_r,
    output logic led0_g,
    output logic led0_b,
    output logic led1_r,
    output logic led1_g,
    output logic led1_b,
    output logic led2_r,                    
    output logic led2_g,
    output logic led2_b,
    output logic led3_r,                    
    output logic led3_g,
    output logic led3_b    
    );

  wire [3:0] btn_db;
  wire [3:0] sw_db;
   
  debounce #(.WIDTH(4)) btn_debounce(.*, .signal_in(btn), .signal_out(btn_db));
  debounce #(.WIDTH(4)) sw_debounce(.*, .signal_in(sw), .signal_out(sw_db));  
  led_ctrl led_ctrl(.*, .sw(sw_db), .btn(btn_db));
      
endmodule
