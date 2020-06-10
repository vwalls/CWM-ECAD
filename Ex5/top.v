//////////////////////////////////////////////////////////////////////////////////
// Exercise #5 
// Student Name: Victoria Walls
// Date: 10/06/20
//
//  Description: In this exercise, you need to implement a UK traffic lights 
//  sequencing system. 
//
//  inputs:
//           clk
//
//  outputs:
//           red, amber, green
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps
 module traffic(

 //Todo: define inputs here
    input clk,
    output reg [2:0] rag
    );

//logic
    always @(posedge clk) begin

    	if (rag==3'b100)
    	rag <= 3'b110;
    	else begin
    	if (rag == 3'b110)
    	rag <= 3'b001;
    	if (rag == 3'b001)
    	rag <= 3'b010;
	if (rag == 3'b010)
	rag <= 3'b100;
    	else
    	rag <= 3'b010;	//if any undersired state occurs should go to amber(this isn't unwanted)
    	end
    end

endmodule 
