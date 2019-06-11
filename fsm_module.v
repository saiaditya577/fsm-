`timescale 1ns / 1ps

`define INITIAL	3'd0
`define RELEASE	3'd1
`define INSERT	3'd2
`define STOP	3'd3
module fsm_module(
	  clk,
     	  EN,
     	  DIRECTION,
     	  START,
	  FAULT,
     	  EN_RELEASE,
 	  EN_INSERT,
 	  EN_RESET,
	  EN_ALARM
    );


input clk;
input EN;
input DIRECTION;
input START;
input FAULT;
output EN_RELEASE;
output EN_INSERT;
output EN_RESET;
output EN_ALARM;
	 
reg EN_RELEASE;
reg EN_INSERT;
reg EN_RESET;
reg EN_ALARM;
reg STATE;
reg [3:0] ENABLES;
wire en_release;
wire en_insert;
wire en_reset;
wire en_alarm;
wire [3:0] ips;
assign ips = {EN,DIRECTION,START,FAULT};

assign en_release = ENABLES[3];
assign en_insert = ENABLES[2];
assign en_reset = ENABLES[1];
assign en_alarm = ENABLES[0];

always@(*)
begin
EN_RELEASE <= en_release;
EN_INSERT <= en_insert;
EN_RESET <= en_reset;
EN_ALARM <= en_alarm;
end
always@(posedge clk or posedge EN or posedge FAULT)
begin 
casez(ips)
4'b0??0: ENABLES <= 4'b0010;
4'b???1: ENABLES <= 4'b0001;
4'b1?00: ENABLES <= 4'b0000;
4'b1110: ENABLES <= 4'b1000;
4'b1010: ENABLES <= 4'b0100;
endcase
end 
	endmodule


