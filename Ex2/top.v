//////////////////////////////////////////////////////////////////////////////////
// Exercise #2 
// Student Name: Victoria Walls
// Date: 08/06/20
//
//  Description: In this exercise, you need to design a multiplexer, where the  
//  output acts according to the following truth table:
//
//  sel | out
// -----------------
//   0  | a
//   1  | b
//
//  inputs:
//           a, b, sel
//
//  outputs:
//           out
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module mux(
    //Todo: define inputs here
    input a,
    input b,
    input sel
    output out
	);
    
    //Todo: define registers and wires here
    parameter CLK_PERIOD = 10;
    	reg  clk, out;

    initial begin 
	  clk=0;   
	forever
	#(CLK_PERIOD/2) 
	clk=~clk;		//negate clk so it is a fall delay
	end

    //Todo: define your logic here                 
     always @(posedge clk)
	if(sel)
	out = b;
	else
	out = a ;         

endmodule
