`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2024 07:36:29 PM
// Design Name: 
// Module Name: Four_bit_adder
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


module Four_bit_adder(a,b,c_in,s,c_out);
input [3:0]a,b;
input c_in;
output [3:0]s;
output c_out;
wire c1,c2,c3;

Full_adder H0(a[0],b[0],c_in,s[0],c1);
Full_adder H1(a[1],b[1],c1,s[1],c2);
Full_adder H2(a[2],b[2],c2,s[2],c3);
Full_adder H3(a[3],b[3],c3,s[3],c_out);
endmodule
////////////////////////////////////////////////////
module Full_adder(a,b,c_in,s,c);
input a,b,c_in;
output s,c;
wire x,y,z;
xor (x,a,b);
xor (s,x,c_in);
and (y,a,b);
and (z,x,c_in);
xor(c,z,y);
endmodule
