set sdc_version 2.1
set_units -time ns -capacitance pF ;# -resistance kOhm -voltage V -current mA
current_design topPLLDigital

create_clock -period 25 [get_ports clk]
create_clock -period 31.25 [get_ports sclk]
create_generated_clock [get_pins ckDiv/clk_out]  -name clk_2  -source [get_ports clk]  -divide_by 2
set_false_path   -from [get_clocks clk]  -to [get_clocks sclk]
set_false_path   -from [get_clocks clk]  -to [get_clocks clk_2]
set_false_path   -from [get_clocks sclk] -to [get_clocks clk_2]

set_clock_groups  -asynchronous -name async_clk_sclk  -group [list [get_clocks \
clk] [get_clocks sclk]]


create_generated_clock -divide_by 2 -source [get_ports clk] -name clk_2 [get_nets clk_2]

set CLOCK [get_clocks clk]
set_clock_uncertainty -setup 0.1 $CLOCK ;# Assumes jitter of 50ps and skew + margin of 75ps
set_clock_latency -max 0.2 $CLOCK ;# pre layout assumes input latency of the clock is maximum 40% of the period
set_clock_transition -max 0.025 $CLOCK ;# assumes that the rise time of the clock is 5% of the period

set_input_delay -clock clk 3 [all_inputs] -add_delay -clock sclk 3 [all_inputs]
set_output_delay -clock clk_2 -max 3 [all_outputs]

set_load -pin_load 1 [get_ports miso]
set_load -pin_load 1 [get_ports {dsm_out[4]}]
set_load -pin_load 1 [get_ports {dsm_out[3]}]
set_load -pin_load 1 [get_ports {dsm_out[2]}]
set_load -pin_load 1 [get_ports {dsm_out[1]}]
set_load -pin_load 1 [get_ports {dsm_out[0]}]

set_output_delay -clock clk_2  1  [get_ports miso]
set_output_delay -clock clk_2  1  [get_ports {dsm_out[4]}]
set_output_delay -clock clk_2  1  [get_ports {dsm_out[3]}]
set_output_delay -clock clk_2  1  [get_ports {dsm_out[2]}]
set_output_delay -clock clk_2  1  [get_ports {dsm_out[1]}]
set_output_delay -clock clk_2  1  [get_ports {dsm_out[0]}]

set_max_fanout 15.000 [current_design]
set_max_transition 0.025 [all_inputs] ;# Assumes that the maximum input transition time will be 25 pS

