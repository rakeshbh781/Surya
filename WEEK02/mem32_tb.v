`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2024 18:30:49
// Design Name: 
// Module Name: mem32_tb
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


module mem32_tb();
  reg clk;
  reg rst;
  reg wr;
  reg rd;
  reg [7:0] Data_in;
  reg [31:0] addr;

 
  wire [31:0] Data_out;

  mem uut (
    .clk(clk),
    .rst(rst),
    .wr(wr),
    .rd(rd),
    .Data_in(Data_in),
    .addr(addr),
    .Data_out(Data_out)
  );

  
  always #5 clk = ~clk; 

  initial begin
   
    clk = 0;
    rst = 0;
    wr = 0;
    rd = 0;
    Data_in = 0;
    addr = 0;

  
    rst = 1;  #10;  rst = 0;

    
    wr = 1;  rd = 0;  addr = 4'b0000;  Data_in = 32'hDEADBEEF;
    #10; 

   
    wr = 0;  rd = 1;  addr = 4'b0000;
    #10;  

    
    wr = 1;  rd = 0;  addr = 4'b0100;  Data_in = 32'hCAFEBABE;
    #10; 
    wr = 0;  rd = 1;  addr = 4'b0100;
    #10; 
    $stop;
  end

  initial begin
    $monitor("At time %t, clk=%b, rst=%b, wr=%b, rd=%b, addr=%b, Data_in=%h, Data_out=%h",
              $time, clk, rst, wr, rd, addr, Data_in, Data_out);
  end

endmodule
