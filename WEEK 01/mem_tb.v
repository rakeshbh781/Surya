`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 12:17:27
// Design Name: 
// Module Name: mem_tb
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

module mem_tb();

  reg clk, rst, wr, rd;
  reg [3:0] addr;
  reg [7:0] Data_in;
  wire [7:0] Data_out;

  
  mem uut (
    .clk(clk),
    .rst(rst),
    .wr(wr),
    .rd(rd),
    .addr(addr),
    .Data_in(Data_in),
    .Data_out(Data_out)
  );

 
  always #5 clk = ~clk;

  initial begin
   
    clk = 0;
    rst = 1;
    wr = 0;
    rd = 0;
    addr = 3'b000;
    Data_in = 8'h00;

    
    #10 rst = 0;

    
    #10 wr = 1; rd = 0; addr = 3'b001; Data_in = 8'hA5;

   
    #10 wr = 1; rd = 0; addr = 3'b010; Data_in = 8'h3C;

    
    #10 wr = 0; rd = 1; addr = 3'b001;

    
    #10 wr = 0; rd = 1; addr = 3'b010;

   
    #10 wr = 1; rd = 0; addr = 3'b011; Data_in = 8'hFF;

    
    #10 wr = 0; rd = 1; addr = 3'b011;

   
    #10 rst = 1; 

    #10 rst = 0; wr = 0; rd = 1; addr = 3'b011;  
    #20 $finish;
  end

 
  initial begin
    $monitor("At time %t, addr = %b, Data_in = %h, Data_out = %h, wr = %b, rd = %b, rst = %b", 
              $time, addr, Data_in, Data_out, wr, rd, rst);
  end

endmodule


