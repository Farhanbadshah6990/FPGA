`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2024 12:42:23 PM
// Design Name: 
// Module Name: Full_adder
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


module Full_adder(a,b,d,s,c);
input a,b,d;
output s,c;
wire x,y,z;
xor (x,a,b);
xor (s,x,d);
and (y,a,b);
and (z,x,d);
xor(c,z,y);
endmodule
