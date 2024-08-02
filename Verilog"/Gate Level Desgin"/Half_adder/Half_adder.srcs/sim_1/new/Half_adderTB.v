`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2024 02:01:04 AM
// Design Name: 
// Module Name: Half_adderTB
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


module Half_adderTB();
reg A,B;
wire S,C;
Half_adder A3(.a(A),.b(B),.s(S),.c(C));
initial
begin
A=0;B=0;
#100
A=0;B=1;
#100
A=1;B=0;
#100
A=1;B=1;
end
endmodule
