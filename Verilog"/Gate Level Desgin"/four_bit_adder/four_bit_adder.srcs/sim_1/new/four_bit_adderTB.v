`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2024 08:35:40 PM
// Design Name: 
// Module Name: four_bit_adderTB
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


module four_bit_adderTB();
reg [3:0]A,B;
reg C_in;
wire [3:0]S;
wire C_out;
Four_bit_adder T2(A,B,C_in,S,C_out);
initial 
begin
A=4'd8;B=4'd9;C_in=1'b1;
#100
$display("Time=%0d  A=%d  B=%d  C_in=%d  S=%d C_out=%b\n",   $time,A, B ,C_in ,S ,C_out);
A=4'd2;B=4'd7;C_in=1'b0; 
#100
$display("Time=%0d A=%d  B=%d  C_in=%d  S=%d  C_out=%b\n",$time,A, B ,C_in ,S ,C_out);
A=4'd9;B=4'd2;C_in=1'b0;
#100
$display("Time=%0d A=%d  B=%d  C_in=%d  S=%d  C_out=%b\n",$time,A, B ,C_in ,S ,C_out);
A=4'd9;B=4'd2;C_in=1'b0;
end
endmodule
