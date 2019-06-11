`timescale 1ns / 1ps
`define clkperiodby2 50
`include "fsm_module.v"


module fsm_module_test;

	// Inputs
	reg clk;
	reg EN;
	reg DIRECTION;
	reg START;
	reg FAULT;

	// Outputs
	wire EN_RELEASE;
	wire EN_INSERT;
	wire EN_RESET;
	wire EN_ALARM;

	// Instantiate the Unit Under Test (UUT)
	fsm_module uut (
		.clk(clk), 
		.EN(EN), 
		.DIRECTION(DIRECTION), 
		.START(START), 
		.FAULT(FAULT), 
		.EN_RELEASE(EN_RELEASE), 
		.EN_INSERT(EN_INSERT), 
		.EN_RESET(EN_RESET), 
		.EN_ALARM(EN_ALARM)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		EN = 0;
		DIRECTION = 0;
		START = 0;
		FAULT = 0;

		// Wait 100 ns for global reset to finish
		#100
		#100 EN = 0;
			  DIRECTION = 0;
			  START = 0;
			  FAULT = 1;
		#100 EN = 1;
			  DIRECTION = 1;
			  START =1;
			  FAULT = 1;
		#100 EN = 1;
			  DIRECTION = 0;
			  START = 0;
			  FAULT = 1;
		#100 EN = 0;
			  DIRECTION = 1;
			  START = 0;
			  FAULT = 0;
		#100 START = 1;
		#100 EN = 1;
			  DIRECTION = 1;
		#100 DIRECTION = 0;
		#100 START = 0;
		#100 DIRECTION = 1;
		#100 START = 1;
		#100 DIRECTION = 0;
		#100 DIRECTION = 1;
		#100 FAULT = 1;
		#100 EN = 0;
		#100 FAULT = 0;
			  EN = 1;
		#100 START = 0;
		#100 EN = 0;
		#100 EN = 1;
			  START = 1;
		#100 EN = 0;
		#100 EN = 1;
			  DIRECTION = 0;
			  START = 1;
			  FAULT = 0;
		#100 FAULT = 1;
		#100 FAULT = 0;
		#100 EN = 0;
		$stop;
		end 
		always
		#`clkperiodby2 clk = !clk;
      
endmodule

