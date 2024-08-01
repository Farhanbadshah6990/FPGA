`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2024 01:05:15 AM
// Design Name: 
// Module Name: half_adderTB
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


module half_adderTB();
logic A,B;
logic S,C;
Half_adder H1(A,B,S,C);
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
