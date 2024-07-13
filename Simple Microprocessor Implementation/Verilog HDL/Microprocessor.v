// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
// CREATED		"Sat Jul 13 19:24:48 2024"

module Microprocessor(
	reset_1,
	clk_1,
	prog_run,
	Data_input,
	write_addr,
	output_bus
);


input wire	reset_1;
input wire	clk_1;
input wire	prog_run;
input wire	[7:0] Data_input;
input wire	[3:0] write_addr;
output wire	[7:0] output_bus;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_2;
wire	[3:0] SYNTHESIZED_WIRE_4;
wire	[7:0] SYNTHESIZED_WIRE_5;
wire	[7:0] SYNTHESIZED_WIRE_6;
wire	[11:0] SYNTHESIZED_WIRE_32;
wire	[3:0] SYNTHESIZED_WIRE_8;
wire	[3:0] SYNTHESIZED_WIRE_9;
wire	[7:0] SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	[3:0] SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	[7:0] SYNTHESIZED_WIRE_15;
wire	[3:0] SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	[7:0] SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	[7:0] SYNTHESIZED_WIRE_22;
wire	[7:0] SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	[7:0] SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	[7:0] SYNTHESIZED_WIRE_29;





pc	b2v_inst(
	.cp(SYNTHESIZED_WIRE_0),
	.clk(SYNTHESIZED_WIRE_31),
	.reset(reset_1),
	.count(SYNTHESIZED_WIRE_9));


mar	b2v_inst1(
	.ld_bar(SYNTHESIZED_WIRE_2),
	.clk(SYNTHESIZED_WIRE_31),
	.x(SYNTHESIZED_WIRE_4),
	.q(SYNTHESIZED_WIRE_12));


bus	b2v_inst10(
	.ACC_IN(SYNTHESIZED_WIRE_5),
	.ALU_IN(SYNTHESIZED_WIRE_6),
	.control_sig(SYNTHESIZED_WIRE_32),
	.IR_IN(SYNTHESIZED_WIRE_8),
	.PC_IN(SYNTHESIZED_WIRE_9),
	.RAM_IN(SYNTHESIZED_WIRE_10),
	.ACC_OUT(SYNTHESIZED_WIRE_20),
	.IR_OUT(SYNTHESIZED_WIRE_15),
	.MAR_OUT(SYNTHESIZED_WIRE_4),
	.OPR_OUT(SYNTHESIZED_WIRE_29),
	.REG_B_OUT(SYNTHESIZED_WIRE_26));


programmer_block	b2v_inst11(
	.prog_or_run(prog_run),
	.clk(clk_1),
	.universe_CLK(SYNTHESIZED_WIRE_31),
	.write_clk(SYNTHESIZED_WIRE_11));


data_ram	b2v_inst2(
	.write_clk(SYNTHESIZED_WIRE_11),
	.data_in(Data_input),
	.read_addr(SYNTHESIZED_WIRE_12),
	.write_addr(write_addr),
	.data_output_rm(SYNTHESIZED_WIRE_10));


ir	b2v_inst3(
	.li_bar(SYNTHESIZED_WIRE_13),
	.clr(reset_1),
	.clk(SYNTHESIZED_WIRE_31),
	.d_in(SYNTHESIZED_WIRE_15),
	.y_1(SYNTHESIZED_WIRE_17),
	.y_2(SYNTHESIZED_WIRE_8));


control_unit	b2v_inst4(
	.reset(reset_1),
	.clk(SYNTHESIZED_WIRE_31),
	.opcode(SYNTHESIZED_WIRE_17),
	.control_signal(SYNTHESIZED_WIRE_32));


ac	b2v_inst5(
	.la_bar(SYNTHESIZED_WIRE_18),
	.clk(SYNTHESIZED_WIRE_31),
	.data_in(SYNTHESIZED_WIRE_20),
	.y_1(SYNTHESIZED_WIRE_22),
	.y_2(SYNTHESIZED_WIRE_5));


alu	b2v_inst6(
	.su(SYNTHESIZED_WIRE_21),
	.a(SYNTHESIZED_WIRE_22),
	.b(SYNTHESIZED_WIRE_23),
	.alu_out(SYNTHESIZED_WIRE_6));


reg_b	b2v_inst7(
	.lb_bar(SYNTHESIZED_WIRE_24),
	.clk(SYNTHESIZED_WIRE_31),
	.data_in(SYNTHESIZED_WIRE_26),
	.data_out(SYNTHESIZED_WIRE_23));


op_reg	b2v_inst8(
	.lo_bar(SYNTHESIZED_WIRE_27),
	.clk(SYNTHESIZED_WIRE_31),
	.data_in(SYNTHESIZED_WIRE_29),
	.data_out(output_bus));


cont_sig_bus	b2v_inst9(
	.CONT_SIGNAL(SYNTHESIZED_WIRE_32),
	.LM_BAR(SYNTHESIZED_WIRE_2),
	.LL_BAR(SYNTHESIZED_WIRE_13),
	.LO_BAR(SYNTHESIZED_WIRE_27),
	.LB_BAR(SYNTHESIZED_WIRE_24),
	.LA_BAR(SYNTHESIZED_WIRE_18),
	.CP(SYNTHESIZED_WIRE_0),
	.SU(SYNTHESIZED_WIRE_21));


endmodule
