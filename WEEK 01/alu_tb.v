`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 12:44:06
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();
reg [31:0]a;
reg [31:0]b;
reg [2:0]fun;
wire [31:0]y;
alu u0(a,b,fun,y);
initial
begin
a=32'h00000000;
b=32'hffffffff;
#10 fun=0;
#10 fun=1;
#10 fun=2;
#10 fun=3;
#10 fun=4;
#10 fun=5;
#10 fun=6;
#10 $finish;
end
endmodule
