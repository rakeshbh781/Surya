`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 12:38:26
// Design Name: 
// Module Name: alu
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


module alu(a,b,fun,y);
input[31:0]a;
input[31:0]b;
input[2:0]fun;
output reg[31:0]y;
always@(*)
begin
case (fun)
3'b000:y=a&b;
3'b001:y=a|b;
3'b010:y=~(a&b);
3'b011:y=~(a|b);
3'b100:y=a+b;
3'b101:y=a-b;
3'b110:y=a*b;
default:y=32'b0;
endcase
end
endmodule
