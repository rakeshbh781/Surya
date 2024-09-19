`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 11:51:55
// Design Name: 
// Module Name: mem
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


module mem(clk,rst,wr,rd,Data_in,addr,Data_out);
input clk,rst,wr,rd;
input [7:0]Data_in;
input [3:0]addr;
output reg [7:0]Data_out;
reg[7:0] A [0:10];
always@(posedge clk)
begin
if(rst)
begin
end
else
case({wr,rd})
2'b10:A[addr]=Data_in;
2'b01:Data_out=A[addr];
default:Data_out=8'bz;
endcase
end
endmodule
