`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2024 18:28:49
// Design Name: 
// Module Name: mem32
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


module mem32(clk, rst, wr, rd, Data_in, addr, Data_out);
  input clk, rst, wr, rd;
  input [7:0] Data_in;  
  input [31:0] addr;      
  output reg [31:0] Data_out; 

  reg [7:0] A [0:10];  

  always @(posedge clk)
  begin
    if (rst)
    begin
    end
    else
    begin
      case ({wr, rd})
        2'b10: 
        begin
          A[addr]     = Data_in[7:0];     
          A[addr + 1] = Data_in[15:8];   
          A[addr + 2] = Data_in[23:16];   
          A[addr + 3] = Data_in[31:24];   
        end
        2'b01:  
        begin
          Data_out[7:0]     = A[addr];      
          Data_out[15:8]    = A[addr + 1];   
          Data_out[23:16]   = A[addr + 2];  
          Data_out[31:24]   = A[addr + 3];  
        end
        default: Data_out = 32'bz; 
      endcase
    end
  end
endmodule

  
