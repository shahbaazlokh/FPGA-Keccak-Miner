`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2019 02:41:31 PM
// Design Name: 
// Module Name: keccak_tb
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


module keccak_tb();

    reg              		clk = 0;
    reg		[607:0] 	in = 0;
    reg      	[31:0]   	nonce = 0;	
//	input  		[31:0]  	target0; 
	reg  		[31:0]  	target1 = 0; 
	
	wire gn_match;
	
	initial begin
	   forever #2 clk = ~clk;
	end
	// Smartcash Genesis blockheader, nonce = golden nonce
	initial begin
	   in = 608'h02000000a4051e368bfa0191e6c747507dd0fdb03da1a0a54ed14829810b97c6ac070000e932b0f6b8da85ccc464d9d5066d01d904fb05ae8d1ddad7095b9148e3f08ba6bcfb6459f0ff0f1e;
	   nonce = 32'h3682bb08;
	   target1 = 32'h0000009;
	end
keccak uut(clk, in, nonce, target1, gn_match);
endmodule
