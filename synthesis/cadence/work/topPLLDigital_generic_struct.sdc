# ####################################################################

#  Created by Genus(TM) Synthesis Solution 23.14-s090_1 on Sat Sep 13 09:02:27 EDT 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design topPLLDigital

create_clock -name "clk" -period 25.0 -waveform {0.0 12.5} [get_ports clk]
create_clock -name "sclk" -period 31.25 -waveform {0.0 15.625} [get_ports sclk]
create_generated_clock -name "clk_2" -divide_by 2     -source [get_ports clk]   [get_pins ckDiv/clk_out] 
set_clock_transition -max 0.025 [get_clocks clk]
set_load -pin_load 1.0 [get_ports miso]
set_load -pin_load 1.0 [get_ports {dsm_out[4]}]
set_load -pin_load 1.0 [get_ports {dsm_out[3]}]
set_load -pin_load 1.0 [get_ports {dsm_out[2]}]
set_load -pin_load 1.0 [get_ports {dsm_out[1]}]
set_load -pin_load 1.0 [get_ports {dsm_out[0]}]
set_clock_groups -name "async_clk_sclk" -asynchronous -group [list \
  [get_clocks clk]  \
  [get_clocks sclk] ]
set_false_path -from [get_clocks clk] -to [get_clocks sclk]
set_false_path -from [get_clocks clk] -to [get_clocks clk_2]
set_false_path -from [get_clocks sclk] -to [get_clocks clk_2]
set_clock_gating_check -setup 0.0 
set_output_delay -clock [get_clocks clk_2] -add_delay 1.0 [get_ports miso]
set_output_delay -clock [get_clocks clk_2] -add_delay 1.0 [get_ports {dsm_out[4]}]
set_output_delay -clock [get_clocks clk_2] -add_delay 1.0 [get_ports {dsm_out[3]}]
set_output_delay -clock [get_clocks clk_2] -add_delay 1.0 [get_ports {dsm_out[2]}]
set_output_delay -clock [get_clocks clk_2] -add_delay 1.0 [get_ports {dsm_out[1]}]
set_output_delay -clock [get_clocks clk_2] -add_delay 1.0 [get_ports {dsm_out[0]}]
set_max_fanout 15.000 [current_design]
set_max_transition 0.025 [get_ports modclk]
set_max_transition 0.025 [get_ports clk]
set_max_transition 0.025 [get_ports rst]
set_max_transition 0.025 [get_ports sclk]
set_max_transition 0.025 [get_ports ss]
set_max_transition 0.025 [get_ports mosi]
set_wire_load_mode "enclosed"
set_clock_latency -max 0.2 [get_clocks clk]
set_clock_uncertainty -setup 0.1 [get_clocks clk]
