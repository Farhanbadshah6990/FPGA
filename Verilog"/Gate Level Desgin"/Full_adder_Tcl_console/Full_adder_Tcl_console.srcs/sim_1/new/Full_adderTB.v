`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2024 01:02:45 PM
// Design Name: 
// Module Name: Full_adderTB
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


module Full_adderTB();
reg A,B,D;
wire C,S;
Full_adder A1(A,B,D,C,S);
initial 
begin
A=0; B=0;D=0;
#50
A=0;B=0;D=1;
#50
A=0;B=1;D=0;
#50
A=0;B=1;D=1;
#50
A=1;B=0;D=0;
#50
A=1;B=0;D=1;
#50
A=1;B=1;D=0;
#50
A=1;B=1;D=1;
#50
$finish;
end
initial
begin
$display("A,  B,  D,  C,  S");
$monitor(A,"\t",B,"\t",D,"\t",C,"\t",S);
end
endmodule

