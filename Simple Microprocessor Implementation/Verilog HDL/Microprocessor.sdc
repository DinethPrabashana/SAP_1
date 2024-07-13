## Generated SDC file "Microprocessor.sdc"

## Copyright (C) 1991-2013 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

## DATE    "Sat Jul 13 21:20:14 2024"

##
## DEVICE  "EP4CGX15BF14C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk_1} -period 10.000 -waveform { 0.000 5.000 } [get_ports {clk_1}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {clk_1}] -rise_to [get_clocks {clk_1}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk_1}] -fall_to [get_clocks {clk_1}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk_1}] -rise_to [get_clocks {clk_1}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk_1}] -fall_to [get_clocks {clk_1}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {clk_1}]  2.000 [get_ports {Data_input[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk_1}]  2.000 [get_ports {Data_input[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk_1}]  2.000 [get_ports {Data_input[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk_1}]  2.000 [get_ports {Data_input[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk_1}]  2.000 [get_ports {Data_input[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk_1}]  2.000 [get_ports {Data_input[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk_1}]  2.000 [get_ports {Data_input[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk_1}]  2.000 [get_ports {Data_input[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk_1}]  2.000 [get_ports {reset_1}]
set_input_delay -add_delay  -clock [get_clocks {clk_1}]  2.000 [get_ports {write_addr[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk_1}]  2.000 [get_ports {write_addr[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk_1}]  2.000 [get_ports {write_addr[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk_1}]  2.000 [get_ports {write_addr[3]}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {clk_1}]  1.000 [get_ports {output_bus[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk_1}]  1.000 [get_ports {output_bus[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk_1}]  1.000 [get_ports {output_bus[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk_1}]  1.000 [get_ports {output_bus[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk_1}]  1.000 [get_ports {output_bus[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk_1}]  1.000 [get_ports {output_bus[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk_1}]  1.000 [get_ports {output_bus[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk_1}]  1.000 [get_ports {output_bus[7]}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

