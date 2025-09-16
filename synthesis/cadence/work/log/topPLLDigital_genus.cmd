  Setting attribute of root '/': 'log_file' = log/topPLLDigital_genus.cmd
@file(syn-generic-vlsiF25_v2.tcl) 19: 	
@file(syn-generic-vlsiF25_v2.tcl) 20: 	set_db init_hdl_search_path {. ../rtl}
  Setting attribute of root '/': 'init_hdl_search_path' = . ../rtl
@file(syn-generic-vlsiF25_v2.tcl) 21: 	set_db init_lib_search_path {. /data/PDK/sky130a/stdcells/sky130_scl_9T_tech/lib/ \
		                       /data/PDK/sky130a/stdcells/sky130_scl_9T/lib/ \
		                       /data/PDK/sky130a/stdcells/sky130_scl_9T_HS/lib/ \
		                       /data/PDK/sky130a/stdcells/sky130_scl_9T_LP//lib/}
  Setting attribute of root '/': 'init_lib_search_path' = . /data/PDK/sky130a/stdcells/sky130_scl_9T_tech/lib/  /data/PDK/sky130a/stdcells/sky130_scl_9T/lib/  /data/PDK/sky130a/stdcells/sky130_scl_9T_HS/lib/  /data/PDK/sky130a/stdcells/sky130_scl_9T_LP//lib/
@file(syn-generic-vlsiF25_v2.tcl) 25: 	
@file(syn-generic-vlsiF25_v2.tcl) 26: 	set target_library "sky130_tt_1.8_25_nldm"
@file(syn-generic-vlsiF25_v2.tcl) 27: 	read_libs ${target_library}.lib
Info    : Created nominal operating condition. [LBR-412]
        : Operating condition '_nominal_' was created for the PVT values (1.000000, 1.800000, 25.000000) in library 'sky130_tt_1.8_25_nldm.lib'.
        : The nominal operating condition is represented, either by the nominal PVT values specified in the library source (via nom_process,nom_voltage and nom_temperature respectively), or by the default PVT values (1.0,1.0,1.0).
Warning : Unusable clock gating integrated cell found at the time of loading libraries. This warning happens because a particular library cell is defined as 'clock_gating_integrated_cell', but 'dont_use' attribute is defined as true in the liberty library. To make Genus use this cell for clock gating insertion, 'dont_use' attribute should be set to false. [LBR-101]
        : Clock gating integrated cell name: 'ICGX1'
        : To make the cell usable, change the value of 'dont_use' attribute to false.
@file(syn-generic-vlsiF25_v2.tcl) 28: 		
@file(syn-generic-vlsiF25_v2.tcl) 29: 	set RELEASE [lindex [get_db program_version] end]
@file(syn-generic-vlsiF25_v2.tcl) 30: 	set _OUTPUTS_PATH OUTPUT/outputs_${RELEASE}
@file(syn-generic-vlsiF25_v2.tcl) 31: 	set _REPORTS_PATH OUTPUT/reports_${RELEASE}
@file(syn-generic-vlsiF25_v2.tcl) 32: 	set _LOG_PATH OUTPUT/logs_${RELEASE}
@file(syn-generic-vlsiF25_v2.tcl) 33: 	set_db information_level 9
  Setting attribute of root '/': 'information_level' = 9
@file(syn-generic-vlsiF25_v2.tcl) 34: 	set_db invs_temp_dir ${_OUTPUTS_PATH}/invs_tmp_dir
  Setting attribute of root '/': 'invs_temp_dir' = OUTPUT/outputs_23.14-s090_1/invs_tmp_dir
@file(syn-generic-vlsiF25_v2.tcl) 35: 	
@file(syn-generic-vlsiF25_v2.tcl) 36: 	if {![file exists ${_OUTPUTS_PATH}]} {
	  file mkdir ${_OUTPUTS_PATH}
	  puts "Creating directory ${_OUTPUTS_PATH}"
	}
@file(syn-generic-vlsiF25_v2.tcl) 41: 	if {![file exists ${_REPORTS_PATH}]} {
	  file mkdir ${_REPORTS_PATH}
	  puts "Creating directory ${_REPORTS_PATH}"
	}
@file(syn-generic-vlsiF25_v2.tcl) 46: 	if {![file exists ${_LOG_PATH}]} {
	  file mkdir ${_LOG_PATH}
	  puts "Creating directory ${_REPORTS_PATH}"
	}
@file(syn-generic-vlsiF25_v2.tcl) 51:         set write_sdf true
@file(syn-generic-vlsiF25_v2.tcl) 52: 	set rtlDir ../rtl
@file(syn-generic-vlsiF25_v2.tcl) 54: 	set_db script_search_path { . }
  Setting attribute of root '/': 'script_search_path' =  . 
@file(syn-generic-vlsiF25_v2.tcl) 56: 	set_db max_cpus_per_server 8
  Setting attribute of root '/': 'max_cpus_per_server' = 8
@file(syn-generic-vlsiF25_v2.tcl) 58: 	set_db syn_generic_effort $SYN_EFF
  Setting attribute of root '/': 'syn_generic_effort' = medium
@file(syn-generic-vlsiF25_v2.tcl) 59: 	set_db syn_map_effort $SYN_EFF
  Setting attribute of root '/': 'syn_map_effort' = medium
@file(syn-generic-vlsiF25_v2.tcl) 60: 	set_db syn_opt_effort $SYN_EFF
  Setting attribute of root '/': 'syn_opt_effort' = medium
@file(syn-generic-vlsiF25_v2.tcl) 61: 	
@file(syn-generic-vlsiF25_v2.tcl) 65: 	puts "Now load RTL LIST"
Now load RTL LIST
@file(syn-generic-vlsiF25_v2.tcl) 66: 	set rtlList "\
        ${rtlDir}/clkDiv.v \
        ${rtlDir}/fifo_miso.v \
        ${rtlDir}/fifo_pll.v \
        ${rtlDir}/mash111.v \
        ${rtlDir}/Memory43b.v \
        ${rtlDir}/register_bank_pll.v \
        ${rtlDir}/spi_slave_pll.v \
        ${rtlDir}/topPLLDigital.v \
        ${rtlDir}/two_bit_counter.v \
        "
@file(syn-generic-vlsiF25_v2.tcl) 79: 	read_hdl $rtlList
            Reading Verilog file '../rtl/clkDiv.v'
            Reading Verilog file '../rtl/fifo_miso.v'
            Reading Verilog file '../rtl/fifo_pll.v'
            Reading Verilog file '../rtl/mash111.v'
            Reading Verilog file '../rtl/Memory43b.v'
            Reading Verilog file '../rtl/register_bank_pll.v'
            Reading Verilog file '../rtl/spi_slave_pll.v'
            Reading Verilog file '../rtl/topPLLDigital.v'
            Reading Verilog file '../rtl/two_bit_counter.v'
@file(syn-generic-vlsiF25_v2.tcl) 80: 	elaborate $DESIGN
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'CI' and 'S' in libcell 'ADDFX1'.
        : Setting the 'timing_sense' to non_unate.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'B' and 'S' in libcell 'ADDFX1'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'A' and 'S' in libcell 'ADDFX1'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'B' and 'S' in libcell 'ADDHX1'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'A' and 'S' in libcell 'ADDHX1'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'S0' and 'Y' in libcell 'CLKMX2X2'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'B' and 'Y' in libcell 'CLKXOR2X1'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'A' and 'Y' in libcell 'CLKXOR2X1'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'S0' and 'Y' in libcell 'MX2X1'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'S0' and 'Y' in libcell 'MX2X4'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'S1' and 'Y' in libcell 'MX4X1'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'S0' and 'Y' in libcell 'MX4X1'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'S1' and 'Y' in libcell 'MX4X4'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'S0' and 'Y' in libcell 'MX4X4'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'B' and 'Y' in libcell 'XNOR2X1'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'A' and 'Y' in libcell 'XNOR2X1'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'B' and 'Y' in libcell 'XNOR2X2'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'A' and 'Y' in libcell 'XNOR2X2'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'B' and 'Y' in libcell 'XNOR2X4'.
Info    : Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed. [LBR-162]
        : Non_unate 'timing_sense' inferred between pin 'A' and 'Y' in libcell 'XNOR2X4'.
Warning : Maximum message print count reached. [MESG-11]
        : Maximum print count of '20' reached for message 'LBR-162'.
Info    : Unusable library cells found at the time of loading a library.  [LBR-415]
        : Library: 'sky130_tt_1.8_25_nldm.lib', Total cells: 107, Unusable cells: 1.
	List of unusable cells: 'ICGX1 .'
        : For  more  information, refer to 'Cells Identified as Unusable' in the 'User Guide'. To know the reason why a cell is considered as unusable, check 'unusable_reason' libcell attribute.
                  INLINE_INFO: Skipping marking small hierarchies inline as the variable 'hdl_dissolve_primitive_instance_hierarchy_threshold' has not been set to a positive value.
Info    : Elaborating Design. [ELAB-1]
        : Elaborating top-level block 'topPLLDigital' from file '../rtl/topPLLDigital.v'.
Info    : Instantiating Subdesign. [CDFG-567]
        : Linking instance 'topPLLDigital.ckDiv' in module 'topPLLDigital' of library 'default' to module 'clkDiv' of library 'default' (line 3 in file '../rtl/clkDiv.v') in file '../rtl/topPLLDigital.v' on line 46.
Info    : Elaborating Subdesign. [ELAB-2]
        : Elaborating block 'clkDiv_DIV2' from file '../rtl/clkDiv.v'.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'clk_out' [1] doesn't match the width of right hand side [32] in assignment in file '../rtl/clkDiv.v' on line 24.
        : Review and make sure the mismatch is intentional. Genus can possibly issue bitwidth mismatch warning for explicit assignments present in RTL as-well-as for implicit assignments inferred by the tool. For example, in case of enum declaration without value, the tool will implicitly assign value to the enum variables. It also issues the warning for any bitwidth mismatch that appears in this implicit assignment.
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/equal_signed/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'EQ_TC_OP' (pin widths: A=32 B=1 Z=1) at line 15 in the file '../rtl/clkDiv.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'EQ_TC_OP' (pin widths: A=32 B=1 Z=1) at line 15 in the file '../rtl/clkDiv.v' will be considered in the following order: {'hdl_implementation:GB/equal_signed/very_fast' (priority 1)}
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/add_signed/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'ADD_TC_OP' (pin widths: A=32 B=2 Z=32) at line 21 in the file '../rtl/clkDiv.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'ADD_TC_OP' (pin widths: A=32 B=2 Z=32) at line 21 in the file '../rtl/clkDiv.v' will be considered in the following order: {'hdl_implementation:GB/add_signed/very_fast' (priority 1), 'hdl_implementation:GB/add_signed/medium' (priority 1), 'hdl_implementation:GB/add_signed/slow' (priority 1)}
Info    : Instantiating Subdesign. [CDFG-567]
        : Linking instance 'topPLLDigital.counter_inst' in module 'topPLLDigital' of library 'default' to module 'two_bit_counter' of library 'default' (line 1 in file '../rtl/two_bit_counter.v') in file '../rtl/topPLLDigital.v' on line 53.
Info    : Elaborating Subdesign. [ELAB-2]
        : Elaborating block 'two_bit_counter' from file '../rtl/two_bit_counter.v'.
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/add_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'ADD_UNS_OP' (pin widths: A=2 B=1 Z=2) at line 10 in the file '../rtl/two_bit_counter.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'ADD_UNS_OP' (pin widths: A=2 B=1 Z=2) at line 10 in the file '../rtl/two_bit_counter.v' will be considered in the following order: {'hdl_implementation:GB/add_unsigned/very_fast' (priority 1), 'hdl_implementation:GB/add_unsigned/medium' (priority 1), 'hdl_implementation:GB/add_unsigned/slow' (priority 1)}
Info    : Instantiating Subdesign. [CDFG-567]
        : Linking instance 'topPLLDigital.spi_slave_inst' in module 'topPLLDigital' of library 'default' to module 'spi_slave_pll' of library 'default' (line 4 in file '../rtl/spi_slave_pll.v') in file '../rtl/topPLLDigital.v' on line 61.
Info    : Elaborating Subdesign. [ELAB-2]
        : Elaborating block 'spi_slave_pll' from file '../rtl/spi_slave_pll.v'.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'mosi_bit_counter' [5] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 27.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'mosi_shift_reg' [16] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 28.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'data_valid' [1] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 29.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'data' [16] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 30.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'mosi_bit_counter' [5] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 36.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'data_valid' [1] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 40.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'mosi_bit_counter' [5] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 43.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'data_valid' [1] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 46.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'data_valid' [1] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 49.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'mosi_bit_counter' [5] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 50.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'miso' [1] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 57.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'miso_bit_counter' [5] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 58.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'miso_shift_reg' [16] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 59.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'load_miso_data' [1] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 60.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'load_miso_data' [1] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 65.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'miso_bit_counter' [5] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 66.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'miso_bit_counter' [5] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 71.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'load_miso_data' [1] doesn't match the width of right hand side [32] in assignment in file '../rtl/spi_slave_pll.v' on line 76.
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/equal_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'EQ_UNS_OP' (pin widths: A=5 B=5 Z=1) at line 38 in the file '../rtl/spi_slave_pll.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'EQ_UNS_OP' (pin widths: A=5 B=5 Z=1) at line 38 in the file '../rtl/spi_slave_pll.v' will be considered in the following order: {'hdl_implementation:GB/equal_unsigned/very_fast' (priority 1)}
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/lt_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'LT_UNS_OP' (pin widths: A=5 B=5 Z=1) at line 34 in the file '../rtl/spi_slave_pll.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'LT_UNS_OP' (pin widths: A=5 B=5 Z=1) at line 34 in the file '../rtl/spi_slave_pll.v' will be considered in the following order: {'hdl_implementation:GB/lt_unsigned/very_fast' (priority 1), 'hdl_implementation:GB/lt_unsigned/medium' (priority 1), 'hdl_implementation:GB/lt_unsigned/slow' (priority 1)}
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/add_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'ADD_UNS_OP' (pin widths: A=5 B=1 Z=5) at line 36 in the file '../rtl/spi_slave_pll.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'ADD_UNS_OP' (pin widths: A=5 B=1 Z=5) at line 36 in the file '../rtl/spi_slave_pll.v' will be considered in the following order: {'hdl_implementation:GB/add_unsigned/very_fast' (priority 1), 'hdl_implementation:GB/add_unsigned/medium' (priority 1), 'hdl_implementation:GB/add_unsigned/slow' (priority 1)}
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/equal_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'EQ_UNS_OP' (pin widths: A=1 B=1 Z=1) at line 62 in the file '../rtl/spi_slave_pll.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'EQ_UNS_OP' (pin widths: A=1 B=1 Z=1) at line 62 in the file '../rtl/spi_slave_pll.v' will be considered in the following order: {'hdl_implementation:GB/equal_unsigned/very_fast' (priority 1)}
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/gt_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'GT_UNS_OP' (pin widths: A=5 B=1 Z=1) at line 67 in the file '../rtl/spi_slave_pll.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'GT_UNS_OP' (pin widths: A=5 B=1 Z=1) at line 67 in the file '../rtl/spi_slave_pll.v' will be considered in the following order: {'hdl_implementation:GB/gt_unsigned/very_fast' (priority 1), 'hdl_implementation:GB/gt_unsigned/medium' (priority 1), 'hdl_implementation:GB/gt_unsigned/slow' (priority 1)}
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/sub_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'SUB_UNS_OP' (pin widths: A=5 B=1 Z=5) at line 71 in the file '../rtl/spi_slave_pll.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'SUB_UNS_OP' (pin widths: A=5 B=1 Z=5) at line 71 in the file '../rtl/spi_slave_pll.v' will be considered in the following order: {'hdl_implementation:GB/sub_unsigned/very_fast' (priority 1), 'hdl_implementation:GB/sub_unsigned/medium' (priority 1), 'hdl_implementation:GB/sub_unsigned/slow' (priority 1)}
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/equal_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'EQ_UNS_OP' (pin widths: A=5 B=1 Z=1) at line 74 in the file '../rtl/spi_slave_pll.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'EQ_UNS_OP' (pin widths: A=5 B=1 Z=1) at line 74 in the file '../rtl/spi_slave_pll.v' will be considered in the following order: {'hdl_implementation:GB/equal_unsigned/very_fast' (priority 1)}
Info    : Instantiating Subdesign. [CDFG-567]
        : Linking instance 'topPLLDigital.fifo_miso_inst' in module 'topPLLDigital' of library 'default' to module 'fifo_miso' of library 'default' (line 3 in file '../rtl/fifo_miso.v') in file '../rtl/topPLLDigital.v' on line 81.
Info    : Elaborating Subdesign. [ELAB-2]
        : Elaborating block 'fifo_miso_DEPTH8_ADDR_WIDTH3' from file '../rtl/fifo_miso.v'.
Info    : Processing multi-dimensional arrays. [CDFG-250]
        : Variable 'fifo' in module 'fifo_miso_DEPTH8_ADDR_WIDTH3' in file '../rtl/fifo_miso.v' on line 19.
Info    : Bitwidth mismatch in assignment. [CDFG-372]
        : Width of left hand side 'write_ptr' [3] doesn't match the width of right hand side [32] in assignment in file '../rtl/fifo_miso.v' on line 30.
Warning : Maximum message print count reached. [MESG-11]
        : Maximum print count of '20' reached for message 'CDFG-372'.
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/equal_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'EQ_UNS_OP' (pin widths: A=8 B=1 Z=1) at line 26 in the file '../rtl/fifo_miso.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'EQ_UNS_OP' (pin widths: A=8 B=1 Z=1) at line 26 in the file '../rtl/fifo_miso.v' will be considered in the following order: {'hdl_implementation:GB/equal_unsigned/very_fast' (priority 1)}
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/lt_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'LT_UNS_OP' (pin widths: A=2 B=2 Z=1) at line 42 in the file '../rtl/fifo_miso.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'LT_UNS_OP' (pin widths: A=2 B=2 Z=1) at line 42 in the file '../rtl/fifo_miso.v' will be considered in the following order: {'hdl_implementation:GB/lt_unsigned/very_fast' (priority 1), 'hdl_implementation:GB/lt_unsigned/medium' (priority 1), 'hdl_implementation:GB/lt_unsigned/slow' (priority 1)}
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/equal_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'EQ_UNS_OP' (pin widths: A=8 B=4 Z=1) at line 25 in the file '../rtl/fifo_miso.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'EQ_UNS_OP' (pin widths: A=8 B=4 Z=1) at line 25 in the file '../rtl/fifo_miso.v' will be considered in the following order: {'hdl_implementation:GB/equal_unsigned/very_fast' (priority 1)}
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/add_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'ADD_UNS_OP' (pin widths: A=3 B=1 Z=4) at line 38 in the file '../rtl/fifo_miso.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'ADD_UNS_OP' (pin widths: A=3 B=1 Z=4) at line 38 in the file '../rtl/fifo_miso.v' will be considered in the following order: {'hdl_implementation:GB/add_unsigned/very_fast' (priority 1), 'hdl_implementation:GB/add_unsigned/medium' (priority 1), 'hdl_implementation:GB/add_unsigned/slow' (priority 1)}
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/equal_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'EQ_UNS_OP' (pin widths: A=2 B=2 Z=1) at line 52 in the file '../rtl/fifo_miso.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'EQ_UNS_OP' (pin widths: A=2 B=2 Z=1) at line 52 in the file '../rtl/fifo_miso.v' will be considered in the following order: {'hdl_implementation:GB/equal_unsigned/very_fast' (priority 1)}
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/add_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'ADD_UNS_OP' (pin widths: A=3 B=1 Z=4) at line 54 in the file '../rtl/fifo_miso.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'ADD_UNS_OP' (pin widths: A=3 B=1 Z=4) at line 54 in the file '../rtl/fifo_miso.v' will be considered in the following order: {'hdl_implementation:GB/add_unsigned/very_fast' (priority 1), 'hdl_implementation:GB/add_unsigned/medium' (priority 1), 'hdl_implementation:GB/add_unsigned/slow' (priority 1)}
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/sub_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'SUB_UNS_OP' (pin widths: A=8 B=1 Z=8) at line 55 in the file '../rtl/fifo_miso.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'SUB_UNS_OP' (pin widths: A=8 B=1 Z=8) at line 55 in the file '../rtl/fifo_miso.v' will be considered in the following order: {'hdl_implementation:GB/sub_unsigned/very_fast' (priority 1), 'hdl_implementation:GB/sub_unsigned/medium' (priority 1), 'hdl_implementation:GB/sub_unsigned/slow' (priority 1)}
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/add_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'ADD_UNS_OP' (pin widths: A=8 B=1 Z=8) at line 39 in the file '../rtl/fifo_miso.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'ADD_UNS_OP' (pin widths: A=8 B=1 Z=8) at line 39 in the file '../rtl/fifo_miso.v' will be considered in the following order: {'hdl_implementation:GB/add_unsigned/very_fast' (priority 1), 'hdl_implementation:GB/add_unsigned/medium' (priority 1), 'hdl_implementation:GB/add_unsigned/slow' (priority 1)}
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/add_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'ADD_UNS_OP' (pin widths: A=2 B=1 Z=2) at line 49 in the file '../rtl/fifo_miso.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'ADD_UNS_OP' (pin widths: A=2 B=1 Z=2) at line 49 in the file '../rtl/fifo_miso.v' will be considered in the following order: {'hdl_implementation:GB/add_unsigned/very_fast' (priority 1), 'hdl_implementation:GB/add_unsigned/medium' (priority 1), 'hdl_implementation:GB/add_unsigned/slow' (priority 1)}
Info    : Unused instance port. [ELABUTL-132]
        : Unused Port 'fifo_full' of instance 'fifo_miso_inst' of module 'fifo_miso_DEPTH8_ADDR_WIDTH3' inside module 'topPLLDigital' in file '../rtl/topPLLDigital.v' on line 81.
        : Please check the reported scenario of unconnected instance port to ensure that it matches the design intent.
Info    : Unused instance port. [ELABUTL-132]
        : Unused Port 'fifo_empty' of instance 'fifo_miso_inst' of module 'fifo_miso_DEPTH8_ADDR_WIDTH3' inside module 'topPLLDigital' in file '../rtl/topPLLDigital.v' on line 81.
Info    : Instantiating Subdesign. [CDFG-567]
        : Linking instance 'topPLLDigital.fifo_inst' in module 'topPLLDigital' of library 'default' to module 'fifo_pll' of library 'default' (line 3 in file '../rtl/fifo_pll.v') in file '../rtl/topPLLDigital.v' on line 98.
Info    : Elaborating Subdesign. [ELAB-2]
        : Elaborating block 'fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3' from file '../rtl/fifo_pll.v'.
Info    : Processing multi-dimensional arrays. [CDFG-250]
        : Variable 'fifo' in module 'fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3' in file '../rtl/fifo_pll.v' on line 19.
Info    : An implementation was inferred. [CWD-19]
        : The implementation 'hdl_implementation:GB/equal_unsigned/very_fast' was inferred through the binding 'b1' for the call to synthetic operator 'EQ_UNS_OP' (pin widths: A=8 B=1 Z=1) at line 25 in the file '../rtl/fifo_pll.v'.
Info    : Sorted the set of valid implementations for synthetic operator. [CWD-36]
        : The implementations for the call to synthetic operator 'EQ_UNS_OP' (pin widths: A=8 B=1 Z=1) at line 25 in the file '../rtl/fifo_pll.v' will be considered in the following order: {'hdl_implementation:GB/equal_unsigned/very_fast' (priority 1)}
Warning : Maximum message print count reached. [MESG-11]
        : Maximum print count of '20' reached for message 'CWD-19'.
Info    : Unused instance port. [ELABUTL-132]
        : Unused Port 'fifo_full' of instance 'fifo_inst' of module 'fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3' inside module 'topPLLDigital' in file '../rtl/topPLLDigital.v' on line 98.
Info    : Instantiating Subdesign. [CDFG-567]
        : Linking instance 'topPLLDigital.m_43b_inst' in module 'topPLLDigital' of library 'default' to module 'Memory43b' of library 'default' (line 3 in file '../rtl/Memory43b.v') in file '../rtl/topPLLDigital.v' on line 121.
Info    : Elaborating Subdesign. [ELAB-2]
        : Elaborating block 'Memory43b' from file '../rtl/Memory43b.v'.
Info    : Processing multi-dimensional arrays. [CDFG-250]
        : Variable 'memory' in module 'Memory43b' in file '../rtl/Memory43b.v' on line 14.
Warning : Removing unused register. [CDFG-508]
        : Removing unused flip-flop register 'empty' in module 'Memory43b' in file '../rtl/Memory43b.v' on line 51.
        : Genus removes the flip-flop or latch inferred for an unused signal or variable. To preserve the flip-flop or latch, set the hdl_preserve_unused_registers attribute to true or use a pragma in the RTL.
Info    : Latch inferred. Check and revisit your RTL if this is not the intended behavior. [CDFG2G-616]
        : Latch inferred for variable 'read_ptr' in file '../rtl/Memory43b.v' on line 23, column 9.
        : Use the attributes 'set_attribute hdl_error_on_latch true'(LUI) or 'set_db hdl_error_on_latch true' (CUI) to issue an error when a latch is inferred. Use the attributes 'set_attributes hdl_latch_keep_feedback true'(LUI) or 'set_db hdl_latch_keep_feedback true'(CUI) to infer combinational logic rather than a latch in case a variable is explicitly assigned to itself.
Info    : Unused instance port. [ELABUTL-132]
        : Unused Port 'read_enable' of instance 'm_43b_inst' of module 'Memory43b' inside module 'topPLLDigital' in file '../rtl/topPLLDigital.v' on line 121.
Info    : Instantiating Subdesign. [CDFG-567]
        : Linking instance 'topPLLDigital.reg_bank_inst' in module 'topPLLDigital' of library 'default' to module 'register_bank_pll' of library 'default' (line 3 in file '../rtl/register_bank_pll.v') in file '../rtl/topPLLDigital.v' on line 142.
Info    : Elaborating Subdesign. [ELAB-2]
        : Elaborating block 'register_bank_pll' from file '../rtl/register_bank_pll.v'.
Warning : Unreachable statements for case item. [CDFG-472]
        : Case item 'default' in module 'register_bank_pll' in file '../rtl/register_bank_pll.v' on line 25.
Warning : Unreachable statements for case item. [CDFG-472]
        : Case item 'default' in module 'register_bank_pll' in file '../rtl/register_bank_pll.v' on line 38.
Info    : Instantiating Subdesign. [CDFG-567]
        : Linking instance 'topPLLDigital.mash111_inst' in module 'topPLLDigital' of library 'default' to module 'mash111' of library 'default' (line 41 in file '../rtl/mash111.v') in file '../rtl/topPLLDigital.v' on line 165.
Info    : Elaborating Subdesign. [ELAB-2]
        : Elaborating block 'mash111' from file '../rtl/mash111.v'.
Info    : Processing multi-dimensional arrays. [CDFG-250]
        : Variable 'Delay_reg' in module 'mash111' in file '../rtl/mash111.v' on line 68.
Info    : Processing multi-dimensional arrays. [CDFG-250]
        : Variable 'Delay_reg_next' in module 'mash111' in file '../rtl/mash111.v' on line 69.
Info    : Common subexpression eliminated. [CDFG-738]
        : Eliminated '==' in file '../rtl/mash111.v' on line 144.
Info    : Common subexpression kept. [CDFG-739]
        : Kept '==' in file '../rtl/mash111.v' on line 120.
Info    : Common subexpression eliminated. [CDFG-738]
        : Eliminated '==' in file '../rtl/mash111.v' on line 173.
Info    : Common subexpression kept. [CDFG-739]
        : Kept '==' in file '../rtl/mash111.v' on line 120.
Info    : Common subexpression eliminated. [CDFG-738]
        : Eliminated '==' in file '../rtl/mash111.v' on line 202.
Info    : Common subexpression kept. [CDFG-739]
        : Kept '==' in file '../rtl/mash111.v' on line 120.
Info    : Common subexpression eliminated. [CDFG-738]
        : Eliminated '==' in file '../rtl/mash111.v' on line 223.
Info    : Common subexpression kept. [CDFG-739]
        : Kept '==' in file '../rtl/mash111.v' on line 120.
Info    : Common subexpression eliminated. [CDFG-738]
        : Eliminated '==' in file '../rtl/mash111.v' on line 252.
Info    : Common subexpression kept. [CDFG-739]
        : Kept '==' in file '../rtl/mash111.v' on line 120.
Info    : Common subexpression eliminated. [CDFG-738]
        : Eliminated '==' in file '../rtl/mash111.v' on line 278.
Info    : Common subexpression kept. [CDFG-739]
        : Kept '==' in file '../rtl/mash111.v' on line 120.
Info    : Unused instance port. [ELABUTL-132]
        : Unused Port 'ce_out' of instance 'mash111_inst' of module 'mash111' inside module 'topPLLDigital' in file '../rtl/topPLLDigital.v' on line 165.
Warning : Unreachable statements for case item. [CDFG-472]
        : If branch 'default' in module 'topPLLDigital' in file '../rtl/topPLLDigital.v' on line 188.
Warning : Removing unused register. [CDFG-508]
        : Removing unused flip-flop register 'mash_transfer' in module 'topPLLDigital' in file '../rtl/topPLLDigital.v' on line 160.
Info    : Common subexpression eliminated. [CDFG-738]
        : Eliminated '%bit-select%' in file '../rtl/topPLLDigital.v' on line 201.
Info    : Common subexpression kept. [CDFG-739]
        : Kept '%bit-select%' in file '../rtl/topPLLDigital.v' on line 190.
Warning : Signal or variable has multiple drivers. [CDFG2G-622]
        : 'read_now' in module 'topPLLDigital'.
        : This may cause simulation mismatches between the original and synthesized designs.
Info    : Done Elaborating Design. [ELAB-3]
        : Done elaborating 'topPLLDigital'.
                  Checking for analog nets...
                  Check completed for analog nets.
Checking for source RTL...
Check completed for source RTL.
Running Unified Mux Engine Tricks...
Completed Unified Mux Engine Tricks

Stage: post_elab
-------------------------------------------------------
| Trick             | Accepts | Rejects | Runtime (s) | 
-------------------------------------------------------
| ume_constant_bmux |       0 |       0 |        0.00 | 
| ume_merge         |       0 |       0 |        0.00 | 
| ume_ssm           |       0 |       0 |        0.00 | 
| ume_cse           |       1 |       0 |        0.01 | 
| ume_shrink        |       0 |       0 |        0.00 | 
| ume_sweep         |       0 |       0 |        0.00 | 
| ume_constant_bmux |       0 |       0 |        0.00 | 
| ume_merge         |       0 |       0 |        0.00 | 
| ume_ssm           |       0 |       0 |        0.00 | 
| ume_cse           |       0 |       0 |        0.00 | 
| ume_shrink        |       0 |       0 |        0.00 | 
| ume_sweep         |       0 |       0 |        0.00 | 
-------------------------------------------------------
Starting optimize datapath shifters [v1.0] (stage: post_elab, startdef: topPLLDigital, recur: true)
Completed optimize datapath shifters (accepts: 0, rejects: 0, runtime: 0.001s)
Starting clip mux common data inputs [v1.0] (stage: post_elab, startdef: topPLLDigital, recur: true)
Completed clip mux common data inputs (accepts: 0, rejects: 0, runtime: 0.000s)
Starting clip the non-user hierarchies [v2.0] (stage: post_elab, startdef: topPLLDigital, recur: true)
Completed clip the non-user hierarchies (accepts: 0, rejects: 0, runtime: 0.000s)
Starting basic netlist cleanup [v1.0] (stage: post_elab, startdef: topPLLDigital, recur: true)
Completed basic netlist cleanup (accepts: 0, rejects: 0, runtime: 0.000s)

Stage: post_elab
--------------------------------------------------------------------
| Transform                      | Accepts | Rejects | Runtime (s) | 
--------------------------------------------------------------------
| hlo_optimize_datapath_shifters |       0 |       0 |        0.00 | 
| hlo_clip_mux_input             |       0 |       0 |        0.00 | 
| hlo_clip                       |       0 |       0 |        0.00 | 
| hlo_cleanup                    |       0 |       0 |        0.00 | 
--------------------------------------------------------------------
UM:   flow.cputime  flow.realtime  timing.setup.tns  timing.setup.wns  snapshot
UM:*                                                                   elaborate
@file(syn-generic-vlsiF25_v2.tcl) 82:         suspend 

Execution has been suspended temporarily.
Enter 'resume' to continue.
Enter 'stop_suspend' to stop script execution
[SUSPEND]genus:root: 1> resume

Resuming...@file(syn-generic-vlsiF25_v2.tcl) 84:         read_sdc ../constraints/${DESIGN}.sdc
Error   : A required object parameter could not be found. [TUI-61] [parse_options]
        : An object of type 'pin|hpin|port' named '0x14' could not be found.
        : Check to make sure that the object exists and is of the correct type.  The 'what_is' command can be used to determine the type of an object.
Error   : Could not interpret SDC command. [SDC-202] [read_sdc]
        : The 'read_sdc' command encountered an error while processing this command on line '16' of the SDC file '../constraints/topPLLDigital.sdc': create_generated_clock -divide_by 2 -source [get_ports clk] -name clk_2 [get_nets clk_2].
        : The 'read_sdc' command encountered a problem while trying to evaluate an SDC command. This SDC command will be added to the Tcl variable $::dc::sdc_failed_commands.
Error   : A flagged command option was incorrectly repeated. [TUI-33] [set_input_output_delay_fast]
        : The flag is '-clock'.
        : Check the command usage and correct the input to the command.
Error   : Could not interpret SDC command. [SDC-202] [read_sdc]
        : The 'read_sdc' command encountered an error while processing this command on line '23' of the SDC file '../constraints/topPLLDigital.sdc': set_input_delay -clock clk 3 [all_inputs] -add_delay -clock sclk 3 [all_inputs].
            Reading file '/data/projects/vlsi_fall2025/jswalling/synthesis/generic/../constraints/topPLLDigital.sdc'
Statistics for commands executed by read_sdc:
 "all_inputs"               - successful      3 , failed      0 (runtime  0.00)
 "all_outputs"              - successful      1 , failed      0 (runtime  0.00)
 "create_clock"             - successful      2 , failed      0 (runtime  0.01)
 "create_generated_clock"   - successful      1 , failed      1 (runtime  0.03)
 "current_design"           - successful      2 , failed      0 (runtime  0.00)
 "get_clocks"               - successful      9 , failed      0 (runtime  0.00)
 "get_nets"                 - successful      1 , failed      0 (runtime  0.00)
 "get_pins"                 - successful      1 , failed      0 (runtime  0.00)
 "get_ports"                - successful     16 , failed      0 (runtime  0.00)
 "set_clock_groups"         - successful      1 , failed      0 (runtime  0.00)
 "set_clock_latency"        - successful      1 , failed      0 (runtime  0.00)
 "set_clock_transition"     - successful      1 , failed      0 (runtime  0.00)
 "set_clock_uncertainty"    - successful      1 , failed      0 (runtime  0.00)
 "set_false_path"           - successful      3 , failed      0 (runtime  0.00)
 "set_input_delay"          - successful      0 , failed      1 (runtime  0.00)
 "set_load"                 - successful      6 , failed      0 (runtime  0.00)
 "set_max_fanout"           - successful      1 , failed      0 (runtime  0.00)
 "set_max_transition"       - successful      1 , failed      0 (runtime  0.00)
 "set_output_delay"         - successful      7 , failed      0 (runtime  0.00)
 "set_units"                - successful      1 , failed      0 (runtime  0.00)
Warning : Total failed commands during read_sdc are 2
Warning : One or more commands failed when these constraints were applied. [SDC-209]
        : The 'read_sdc' command encountered a problem while processing commands.
        : You can examine the failed commands or save them to a file by querying the Tcl variable $::dc::sdc_failed_commands.
read_sdc completed in 00:00:00 (hh:mm:ss)
@file(syn-generic-vlsiF25_v2.tcl) 86:         read_power_intent ../scripts/upf
Checking out license: Genus_Low_Power_Opt
[09:01:39.250275] Periodic Lic check successful
[09:01:39.250291] Feature usage summary:
[09:01:39.250291] Genus_Synthesis
[09:01:39.250296] Genus_Low_Power_Opt

Started reading power intent file(s) '../scripts/upf'...
========================================================
Checking file(s) '../scripts/upf' with 1801 linter (version: 23.10-a124 dated:05.01.2023).
Completed lint check of files (runtime 0.00).
Completed reading power intent file(s) '../scripts/upf' (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
=============================================================================================================
Started loading library commands in 1801 file(s)...
===================================================
Completed loading library commands in 1801 file(s) (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
========================================================================================================
@file(syn-generic-vlsiF25_v2.tcl) 87: 	apply_power_intent
Started checking and loading power intent for design topPLLDigital...
=====================================================================
Checking and loading file : ../scripts/upf
Completed checking and loading power intent for design topPLLDigital (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
==========================================================================================================================
Started applying power intent constraints on design 'design:topPLLDigital'...
=============================================================================
Warning : Potential problem while applying power intent of 1801 file. [1801-99]
        : Specifying 'receiver_supply' supply for following '6' pin(s) has no effect: modclk clk rst sclk ss mosi. (set_port_attributes:../scripts/upf:11).
        : Check the power intent. If the scenario is expected, this message can be ignored.
Warning : Potential problem while applying power intent of 1801 file. [1801-99]
        : Specifying 'driver_supply' supply for following '6' pin(s) has no effect: miso {dsm_out[4]} {dsm_out[3]} {dsm_out[2]} {dsm_out[1]} {dsm_out[0]}. (set_port_attributes:../scripts/upf:11).
Completed applying power intent constraints on design 'design:topPLLDigital' (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
==================================================================================================================================
Started analyzing power domain boundaries...
============================================
Completed analyzing power domain boundaries (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
=================================================================================================
Tagging rules on existing low power cells...
===========================================
Completed tagging rules on low power cells (runtime  1.00).
==============================================================
Started setting up virtual pg network...
========================================
Completed setting up virtual pg network (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
=============================================================================================
Started identifying always on net segments...
=============================================
Completed identifying always on net segments (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
==================================================================================================
@file(syn-generic-vlsiF25_v2.tcl) 88: 	commit_power_intent
Started identifying clock pins...
=================================
Completed identifying clock pins (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
======================================================================================
Started inserting place holder instances...
===========================================
Warning : No power states defined in power intent file. [CPI-339]
        : Design with undefined power states is 'design:topPLLDigital'. Tool will not insert level shifter cells for defined rules/strategies.
        : At least one power state is expected to be present for level shifter insertion.
Info    : No isolation rules defined. [CPI-502]
        : Design: 'design:topPLLDigital'.
==========================================
Started inserting isolation cell on zero pin SRPG instances...
====================================
Completed inserting 0 isolation cell(s) on Zero-Pin-SRPG cells.
=================================================
Info    : Completed isolation cell insertion. [CPI-517]
        : 0 isolation cells inserted.
Info    : Completed level shifter insertion. [CPI-518]
        : 0 level shifter cells inserted.
Completed inserting place holder instances (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
================================================================================================
Started deleting incorrect insertions...
========================================
Completed deleting incorrect insertions (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
=============================================================================================
Started building library cell cache...
======================================
Completed building library cell cache (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
===========================================================================================
Started identifying supplies of place holder instances...
=========================================================
Completed identifying supplies of place holder instances (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
==============================================================================================================
Started optimizing instances based on supply...
===============================================
REMOVED 0 redundant instances on same hnet segments.
Completed optimizing instances based on supply (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
====================================================================================================
Started deleting instances without supply...
============================================
Completed deleting instances without supply (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
=================================================================================================
Deleted 0 instances without proper supply.
Started checking generic cells for splitting...
===============================================
Completed checking generic cells for splitting (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
====================================================================================================
Splitted 0 instances.
Started deleting place holder instances without proper library cells...
=======================================================================
Completed deleting place holder instances without proper library cells (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
============================================================================================================================
Deleted 0 instances without proper library cells.
Started optimizing redundant cells based on supply...
=====================================================
REMOVED 0 redundant level shifters.
Completed optimizing redundant cells based on supply (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
==========================================================================================================
Started mapping place holder instances with proper library cells...
===================================================================
Completed mapping place holder instances with proper library cells (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
========================================================================================================================
Started optimizing power intent cells...
========================================
REMOVED 0 floating/undriven instances.
REMOVED 0 redundant instances on same hnet segments.
REMOVED 0 redundant instances on same hnet segments.
REMOVED 0 redundant instances.
REMOVED 0 back to back isonor instances.
REMOVED 0 back to back LS instances.
REMOVED 0 redundant instances on same hnet segments.
REMOVED 0 redundant instances on same hnet segments.
REMOVED 0 redundant instances.
Completed optimizing power intent cells (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
=============================================================================================
Started checking for redundant always on cells...
=================================================
Completed checking for redundant always on cells (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
======================================================================================================
Started rechecking always on markings...
========================================
Completed rechecking always on markings (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
=============================================================================================
Started rechecking virtual supply network...
============================================
Completed rechecking virtual supply network (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
=================================================================================================
Started identifying no buffering pins on isolation/level shifter paths...
=========================================================================
Completed identifying no buffering pins on isolation/level shifter paths (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
==============================================================================================================================
Writing no isolation on enable policies in /tmp/genus_temp_1939534_e08127b1-6e7c-4a1b-950d-3634c26ea3e4_lnx-prd-03.ece.vt.edu_jswalling_gmLBym/1939534_add_no_iso_rules_on_en_1/no_iso_on_en.upf.
Reading no isolation policies.

Done reading no isolation policies. Removing /tmp/genus_temp_1939534_e08127b1-6e7c-4a1b-950d-3634c26ea3e4_lnx-prd-03.ece.vt.edu_jswalling_gmLBym/1939534_add_no_iso_rules_on_en_1/no_iso_on_en.upf
Started optimizing power intent cells...
========================================
REMOVED 0 redundant instances on same hnet segments.
REMOVED 0 back to back isonor instances.
Completed optimizing power intent cells (runtime:0.00s memory_usage:0.00M peak_memory:0.00M).
=============================================================================================
@file(syn-generic-vlsiF25_v2.tcl) 95: 	syn_generic
stamp 'PBS_Generic-Start' being created for table 'pbs_debug'

  Total Time (Wall) |  Stage Time (Wall)  |   % (Wall)   |    Date - Time     |  Memory   | Stage
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:12(00:00:27) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:01:39 (Sep13) |  744.4 MB | PBS_Generic-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
Number of threads: 8 * 1   (id: pbs_debug, time_info v1.57)
Info: (*N*) indicates data that was populated from previously saved time_info database
Info: CPU time includes time of parent + longest thread
Info    : Deleting sequential instances not driving any primary outputs. [GLO-32]
        : Deleting 3 sequential instances. 
Following instances are deleted as they do not drive any primary output:
'fifo_inst/data_out_reg[14]', 'fifo_inst/data_out_reg[15]', 
'm_43b_inst/read_enable_reg'.
        : Optimizations such as constant propagation or redundancy removal could change the connections so an instance does not drive any primary outputs anymore. To see the list of deleted sequential, set the 'information_level' attribute to 2 or above. If the message is truncated set the message attribute 'truncate' to false to see the complete list.
Info    : Deleting instances not driving any primary outputs. [GLO-34]
        : Deleting 1 hierarchical instance. 
Following instance is deleted as they do not drive any primary output:
'm_43b_inst/neq_35_39'.
        : Optimizations such as constant propagation or redundancy removal could change the connections so a hierarchical instance does not drive any primary outputs anymore. To see the list of deleted hierarchical instances, set the 'information_level' attribute to 2 or above. If the message is truncated set the message attribute 'truncate' to false to see the complete list. To prevent this optimization, set the 'delete_unloaded_insts' root/subdesign attribute to 'false' or 'preserve' instance attribute to 'true'.

Stage: pre_early_cg
-----------------------------------------------
| Transform | Accepts | Rejects | Runtime (s) | 
-----------------------------------------------
-----------------------------------------------
Mapping ChipWare ICG instances in topPLLDigital
Found 0 unmapped ChipWare ICG instances
Mapped 0 of 0 ChipWare ICG instances
##Generic Timing Info: typical gate delay   93.5 ps   std_slew:   13.6 ps   std_load:  5.5 fF  for library domain _default_
Starting mux data reorder optimization [v1.0] (stage: pre_to_gen_setup, startdef: topPLLDigital, recur: true)
Completed mux data reorder optimization (accepts: 0, rejects: 0, runtime: 0.000s)

Stage: pre_to_gen_setup
-----------------------------------------------------
| Transform       | Accepts | Rejects | Runtime (s) | 
-----------------------------------------------------
| hlo_mux_reorder |       0 |       0 |        0.00 | 
-----------------------------------------------------
Running DP early constant propagation (netlist topPLLDigital)...
Running DP early redundancy removal
Completed DP early redundancy removal on topPLLDigital (runtime = 0.0s)
Multi-threaded constant propagation [4|0] ...
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[0]'.
        : This optimization was enabled by the root attribute 'optimize_constant_latches'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[1]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[2]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[3]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[4]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[5]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[6]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[7]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[8]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[9]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[10]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[11]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[12]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[13]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[14]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[15]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[16]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[17]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[18]'.
Info    : Replacing a latch with a logic constant 0. [GLO-14]
        : The instance is 'm_43b_inst/read_ptr_reg[19]'.
Warning : Maximum message print count reached. [MESG-11]
        : Maximum print count of '20' reached for message 'GLO-14'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[31]'. The constant is '0'.
        : To prevent this optimization, set 'optimize_constant_feedback_seqs' root attribute to 'false'. The instance attribute 'optimize_constant_feedback_seq' controls this optimization. 
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[30]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[29]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[28]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[27]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[26]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[25]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[24]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[23]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[22]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[21]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[20]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[19]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[18]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[17]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[16]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[15]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[14]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[13]'. The constant is '0'.
Info    : Replacing the synchronous part of an always feeding back flip-flop with a logic constant. [GLO-45]
        : The instance is 'ckDiv/count_reg[12]'. The constant is '0'.
Warning : Maximum message print count reached. [MESG-11]
        : Maximum print count of '20' reached for message 'GLO-45'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[0]'.
        : To prevent this optimization, set the 'optimize_constant_0_flops' root attribute to 'false' or 'optimize_constant_0_seq' instance attribute to 'false'. You can also see the complete list of deleted sequential with command "report sequential -deleted" (on Reason "constant0").
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[1]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[2]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[3]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[4]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[5]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[6]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[7]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[8]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[9]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[10]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[11]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[12]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[13]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[14]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[15]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[16]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[17]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[18]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[19]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[20]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[21]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[22]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[23]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[24]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[25]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[26]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[27]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[28]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[29]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[30]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'ckDiv/count_reg[31]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'mash111_inst/Unit_Delay_out1_reg[0]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[2]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[3]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[4]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[5]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[6]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[7]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[8]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[9]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[10]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[11]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[12]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[13]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[14]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[15]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[16]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[17]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[18]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[19]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[20]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[21]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[22]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[23]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[24]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[25]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[26]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[27]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[28]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[29]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[30]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'm_43b_inst/write_ptr_reg[31]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'mash111_inst/Unit_Delay1_out1_reg[10]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'mash111_inst/Unit_Delay2_out1_reg[10]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'mash111_inst/Unit_Delay_out1_reg[42]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'mash111_inst/Unit_Delay_out1_reg[43]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'mash111_inst/Unit_Delay1_out1_reg[11]'.
Info    : Replacing a flip-flop with a logic constant 0. [GLO-12]
        : The instance is 'mash111_inst/Unit_Delay2_out1_reg[11]'.
...done running DP early constant propagation (0 seconds CPU time, 1 seconds wall time, netlist topPLLDigital).
Info    : Deleting sequential instances not driving any primary outputs. [GLO-32]
        : Deleting 101 sequential instances. 
Following instances are deleted as they do not drive any primary output:
'ckDiv/count_reg[0]', 'ckDiv/count_reg[1]', 'ckDiv/count_reg[2]', 
'ckDiv/count_reg[3]', 'ckDiv/count_reg[4]', 'ckDiv/count_reg[5]', 
'ckDiv/count_reg[6]', 'ckDiv/count_reg[7]', 'ckDiv/count_reg[8]', 
'ckDiv/count_reg[9]', 'ckDiv/count_reg[10]', 'ckDiv/count_reg[11]', 
'ckDiv/count_reg[12]', 'ckDiv/count_reg[13]', 'ckDiv/count_reg[14]', 
'ckDiv/count_reg[15]', 'ckDiv/count_reg[16]', 'ckDiv/count_reg[17]', 
'ckDiv/count_reg[18]', 'ckDiv/count_reg[19]', 'ckDiv/count_reg[20]', 
'ckDiv/count_reg[21]', 'ckDiv/count_reg[22]', 'ckDiv/count_reg[23]', 
'ckDiv/count_reg[24]', 'ckDiv/count_reg[25]', 'ckDiv/count_reg[26]', 
'ckDiv/count_reg[27]', 'ckDiv/count_reg[28]', 'ckDiv/count_reg[29]', 
'ckDiv/count_reg[30]', 'ckDiv/count_reg[31]', 'm_43b_inst/read_ptr_reg[0]', 
'm_43b_inst/read_ptr_reg[1]', 'm_43b_inst/read_ptr_reg[2]', 
'm_43b_inst/read_ptr_reg[3]', 'm_43b_inst/read_ptr_reg[4]', 
'm_43b_inst/read_ptr_reg[5]', 'm_43b_inst/read_ptr_reg[6]', 
'm_43b_inst/read_ptr_reg[7]', 'm_43b_inst/read_ptr_reg[8]', 
'm_43b_inst/read_ptr_reg[9]', 'm_43b_inst/read_ptr_reg[10]', 
'm_43b_inst/read_ptr_reg[11]', 'm_43b_inst/read_ptr_reg[12]', 
'm_43b_inst/read_ptr_reg[13]', 'm_43b_inst/read_ptr_reg[14]', 
'm_43b_inst/read_ptr_reg[15]', 'm_43b_inst/read_ptr_reg[16]', 
'm_43b_inst/read_ptr_reg[17]', 'm_43b_inst/read_ptr_reg[18]', 
'm_43b_inst/read_ptr_reg[19]', 'm_43b_inst/read_ptr_reg[20]', 
'm_43b_inst/read_ptr_reg[21]', 'm_43b_inst/read_ptr_reg[22]', 
'm_43b_inst/read_ptr_reg[23]', 'm_43b_inst/read_ptr_reg[24]', 
'm_43b_inst/read_ptr_reg[25]', 'm_43b_inst/read_ptr_reg[26]', 
'm_43b_inst/read_ptr_reg[27]', 'm_43b_inst/read_ptr_reg[28]', 
'm_43b_inst/read_ptr_reg[29]', 'm_43b_inst/read_ptr_reg[30]', 
'm_43b_inst/read_ptr_reg[31]', 'm_43b_inst/write_ptr_reg[2]', 
'm_43b_inst/write_ptr_reg[3]', 'm_43b_inst/write_ptr_reg[4]', 
'm_43b_inst/write_ptr_reg[5]', 'm_43b_inst/write_ptr_reg[6]', 
'm_43b_inst/write_ptr_reg[7]', 'm_43b_inst/write_ptr_reg[8]', 
'm_43b_inst/write_ptr_reg[9]', 'm_43b_inst/write_ptr_reg[10]', 
'm_43b_inst/write_ptr_reg[11]', 'm_43b_inst/write_ptr_reg[12]', 
'm_43b_inst/write_ptr_reg[13]', 'm_43b_inst/write_ptr_reg[14]', 
'm_43b_inst/write_ptr_reg[15]', 'm_43b_inst/write_ptr_reg[16]', 
'm_43b_inst/write_ptr_reg[17]', 'm_43b_inst/write_ptr_reg[18]', 
'm_43b_inst/write_ptr_reg[19]', 'm_43b_inst/write_ptr_reg[20]', 
'm_43b_inst/write_ptr_reg[21]', 'm_43b_inst/write_ptr_reg[22]', 
'm_43b_inst/write_ptr_reg[23]', 'm_43b_inst/write_ptr_reg[24]', 
'm_43b_inst/write_ptr_reg[25]', 'm_43b_inst/write_ptr_reg[26]', 
'm_43b_inst/write_ptr_reg[27]', 'm_43b_inst/write_ptr_reg[28]', 
'm_43b_inst/write_ptr_reg[29]', 'm_43b_inst/write_ptr_reg[30]', 
'm_43b_inst/write_ptr_reg[31]', 'mash111_inst/Unit_Delay1_out1_reg[10]', 
'mash111_inst/Unit_Delay1_out1_reg[11]', 
'mash111_inst/Unit_Delay2_out1_reg[10]', 
'mash111_inst/Unit_Delay2_out1_reg[11]', 
'mash111_inst/Unit_Delay_out1_reg[0]', 
'mash111_inst/Unit_Delay_out1_reg[42]', 
'mash111_inst/Unit_Delay_out1_reg[43]'.
Info    : Deleting instances not driving any primary outputs. [GLO-34]
        : Deleting 5 hierarchical instances. 
Following instances are deleted as they do not drive any primary output:
'ckDiv/add_21_28', 'ckDiv/eq_15_29', 'm_43b_inst/g4', 
'mux_enable_continuous_output_188_17', 'mux_write_enable_188_17'.
Info    : Multimode clock gating check is disabled. [TIM-1000]
Info    : Synthesizing. [SYNTH-1]
        : Synthesizing 'topPLLDigital' to generic gates using 'medium' effort.
Running Synthesis Turbo Flow Version 3.
        Applying wireload models.
        Computing net loads.
Info    : Partition Based Synthesis execution skipped. [PHYS-752]
        : Design size is less than the partition size '100000' for distributed generic optimization to kick in.
Starting mux data reorder optimization [v1.0] (stage: pre_to_gen_setup, startdef: topPLLDigital, recur: true)
Completed mux data reorder optimization (accepts: 0, rejects: 0, runtime: 0.002s)

Stage: pre_to_gen_setup
-----------------------------------------------------
| Transform       | Accepts | Rejects | Runtime (s) | 
-----------------------------------------------------
| hlo_mux_reorder |       0 |       0 |        0.00 | 
-----------------------------------------------------
Starting mux data reorder optimization [v1.0] (stage: post_to_gen_setup, startdef: topPLLDigital, recur: true)
Completed mux data reorder optimization (accepts: 0, rejects: 0, runtime: 0.000s)

Stage: post_to_gen_setup
-----------------------------------------------------
| Transform       | Accepts | Rejects | Runtime (s) | 
-----------------------------------------------------
| hlo_mux_reorder |       0 |       0 |        0.00 | 
-----------------------------------------------------
Running Unified Mux Engine Tricks...
Completed Unified Mux Engine Tricks

Stage: pre_hlo_rtlopt
-----------------------------------------------
| Trick     | Accepts | Rejects | Runtime (s) | 
-----------------------------------------------
| ume_ssm   |       0 |       0 |        0.00 | 
| ume_sweep |       0 |       0 |        0.00 | 
| ume_share |       0 |       0 |        0.00 | 
-----------------------------------------------
Begin SDR optimization CTX_region 
  Setting attribute of root '/': 'hier_sandbox_support_folded' = 1
#Special hiers formed inside Memory43b = 0
#Special hiers formed inside clkDiv_DIV2 = 0
#Special hiers formed inside fifo_miso_DEPTH8_ADDR_WIDTH3 = 0
#Special hiers formed inside fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3 = 0
#Special hiers formed inside mash111 = 0
#Special hiers formed inside register_bank_pll = 0
#Special hiers formed inside spi_slave_pll = 0
#Special hiers formed inside topPLLDigital = 0
#Special hiers formed inside two_bit_counter = 0
No special hier is found 
  Setting attribute of root '/': 'hier_sandbox_support_folded' = 0
End SDR optimization CTX_region 
Begin SDR optimization UME_region 
  Setting attribute of root '/': 'hier_sandbox_support_folded' = 1
#Special hiers formed inside Memory43b = 0
#Special hiers formed inside clkDiv_DIV2 = 0
#Special hiers formed inside fifo_miso_DEPTH8_ADDR_WIDTH3 = 0
#Special hiers formed inside fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3 = 0
#Special hiers formed inside mash111 = 0
#Special hiers formed inside register_bank_pll = 0
#Special hiers formed inside spi_slave_pll = 0
#Special hiers formed inside topPLLDigital = 0
#Special hiers formed inside two_bit_counter = 0
No special hier is found 
  Setting attribute of root '/': 'hier_sandbox_support_folded' = 0
End SDR optimization UME_region 
Starting timing based select reordering [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed timing based select reordering (accepts: 0, rejects: 0, runtime: 0.140s)
Starting recase case-box optimization [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed recase case-box optimization (accepts: 0, rejects: 0, runtime: 0.012s)
Starting infer macro optimization [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed infer macro optimization (accepts: 0, rejects: 4, runtime: 0.005s)
Starting decode mux sandwich optimization [v2.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed decode mux sandwich optimization (accepts: 0, rejects: 0, runtime: 0.000s)
Starting decode mux optimization [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed decode mux optimization (accepts: 0, rejects: 0, runtime: 0.000s)
Starting chop wide muxes [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed chop wide muxes (accepts: 0, rejects: 0, runtime: 0.000s)
Starting common data mux cascade opt [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed common data mux cascade opt (accepts: 0, rejects: 0, runtime: 0.000s)
Starting mux input consolidation [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed mux input consolidation (accepts: 0, rejects: 0, runtime: 0.000s)
Starting constant-data mux optimization [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed constant-data mux optimization (accepts: 0, rejects: 0, runtime: 0.001s)
Starting chain-to-tree inequality transform [v2.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed chain-to-tree inequality transform (accepts: 0, rejects: 0, runtime: 0.005s)
Starting reconvergence optimization [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed reconvergence optimization (accepts: 0, rejects: 0, runtime: 0.001s)
Starting logic restructure optimization [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed logic restructure optimization (accepts: 0, rejects: 0, runtime: 0.001s)
Starting identity transform [v3.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed identity transform (accepts: 0, rejects: 0, runtime: 0.001s)
Starting reduce operator chain [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed reduce operator chain (accepts: 0, rejects: 0, runtime: 0.000s)
Starting common data mux cascade opt [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed common data mux cascade opt (accepts: 0, rejects: 0, runtime: 0.000s)
Starting mux input consolidation [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed mux input consolidation (accepts: 0, rejects: 0, runtime: 0.001s)
Starting optimize datapath elements [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
          Accepted optimize datapath elements in module Memory43b for instance(s): eq_34_27
          Accepted optimize datapath elements in module Memory43b for instance(s): eq_50_18
Completed optimize datapath elements (accepts: 2, rejects: 0, runtime: 0.002s)
Starting datapath recasting [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed datapath recasting (accepts: 0, rejects: 0, runtime: 0.000s)
Starting word-level redundancy removal [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Info    : Setting up the version of high level Redundancy Removal Optimizations. [HLO_RR-1]
        : hlo_rr=1: Enables RRv1, on by default.
Completed word-level redundancy removal (accepts: 0, rejects: 0, runtime: 0.120s)
Starting clip mux common data inputs [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed clip mux common data inputs (accepts: 0, rejects: 0, runtime: 0.000s)
Starting clip the non-user hierarchies [v2.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed clip the non-user hierarchies (accepts: 0, rejects: 0, runtime: 0.001s)
Starting basic netlist cleanup [v1.0] (stage: pre_rtlopt, startdef: topPLLDigital, recur: true)
Completed basic netlist cleanup (accepts: 0, rejects: 0, runtime: 0.000s)

Stage: pre_rtlopt
-----------------------------------------------------------------
| Transform                   | Accepts | Rejects | Runtime (s) | 
-----------------------------------------------------------------
| hlo_timing_reorder          |       0 |       0 |        0.14 | 
| hlo_recase_casebox          |       0 |       0 |        0.01 | 
| hlo_infer_macro             |       0 |       4 |        0.00 | 
| hlo_decode_mux_sandwich     |       0 |       0 |        0.00 | 
| hlo_mux_decode              |       0 |       0 |        0.00 | 
| hlo_chop_mux                |       0 |       0 |        0.00 | 
| hlo_mux_cascade_opt         |       0 |       0 |        0.00 | 
| hlo_mux_consolidation       |       0 |       0 |        0.00 | 
| hlo_constant_mux_opt        |       0 |       0 |        0.00 | 
| hlo_inequality_transform    |       0 |       0 |        0.00 | 
| hlo_reconv_opt              |       0 |       0 |        0.00 | 
| hlo_restructure             |       0 |       0 |        0.00 | 
| hlo_identity_transform      |       0 |       0 |        0.00 | 
| hlo_reduce_operator_chain   |       0 |       0 |        0.00 | 
| hlo_mux_cascade_opt         |       0 |       0 |        0.00 | 
| hlo_mux_consolidation       |       0 |       0 |        0.00 | 
| hlo_optimize_datapath       |       2 |       0 |        0.00 | 
| hlo_datapath_recast         |       0 |       0 |        0.00 | 
| hlo_redundancy_removal_word |       0 |       0 |        0.12 | 
| hlo_clip_mux_input          |       0 |       0 |        0.00 | 
| hlo_clip                    |       0 |       0 |        0.00 | 
| hlo_cleanup                 |       0 |       0 |        0.00 | 
-----------------------------------------------------------------
Running Unified Mux Engine Tricks...
Completed Unified Mux Engine Tricks

Stage: post_hlo_rtlopt
----------------------------------------------------------
| Trick                | Accepts | Rejects | Runtime (s) | 
----------------------------------------------------------
| ume_sweep_aggressive |       0 |       0 |        0.00 | 
| ume_runtime          |       0 |       0 |        0.00 | 
----------------------------------------------------------
Number of big hc bmuxes before = 0
Number of non-ctl's : 8
g63 g64 g65 g66 g68 g70 g72 mux_read_enable_188_17 
SOP DEBUG : Module= topPLLDigital, Cluster= ctl_control_188_17, ctl= 1, Non-ctl= 8
Selected impl_type 1 (pla_form1 (optimized)) for sop cluster ctl_control_188_17.
Info    : Deleting sequential instances not driving any primary outputs. [GLO-32]
        : Deleting 16 sequential instances. 
Following instances are deleted as they do not drive any primary output:
'fifo_inst/fifo_reg[0][14]', 'fifo_inst/fifo_reg[0][15]', 
'fifo_inst/fifo_reg[1][14]', 'fifo_inst/fifo_reg[1][15]', 
'fifo_inst/fifo_reg[2][14]', 'fifo_inst/fifo_reg[2][15]', 
'fifo_inst/fifo_reg[3][14]', 'fifo_inst/fifo_reg[3][15]', 
'fifo_inst/fifo_reg[4][14]', 'fifo_inst/fifo_reg[4][15]', 
'fifo_inst/fifo_reg[5][14]', 'fifo_inst/fifo_reg[5][15]', 
'fifo_inst/fifo_reg[6][14]', 'fifo_inst/fifo_reg[6][15]', 
'fifo_inst/fifo_reg[7][14]', 'fifo_inst/fifo_reg[7][15]'.
              Info: total 17 bmuxes found, 13 are converted to onehot form, and 4 are kept as binary form
Info    : Pre-processed datapath logic. [DPOPT-6]
        : Pre-processing optimizations applied to datapath logic in 'topPLLDigital':
          live_trim(5) sop(1) msb_trim(2) output_trim(6) 
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'g1' of datapath component 'sub_unsigned_173'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'g1' of datapath component 'sub_unsigned'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'g1' of datapath component 'sub_unsigned'.
Info    : Optimizing datapath logic. [DPOPT-1]
        : Optimizing datapath logic in 'topPLLDigital'.
Info    : Implementing datapath configurations. [DPOPT-3]
        : Implementing datapath configurations for 'CDN_DP_region_2_0'
CSAGen Prep Share:0 Re-Write:0 Speculation: 0
CDN_DP_region_2_0 level = 0 loads = 0 drivers = 0
CDN_DP_region_2_0_c0 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 5008770791 , Decode = 2  Mux = 2  sg = slow     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 skipped
CDN_DP_region_2_0_c1 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 5008770791 , Decode = 2  Mux = 2  sg = fast     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_0_c2 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 5008770791 , Decode = 2  Mux = 2  sg = very_slow
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_0_c3 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 5008770791 , Decode = 2  Mux = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_0_c4 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 5008770791 , Decode = 2  Mux = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_0_c5 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 5008770791 , Decode = 2  Mux = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_0_c6 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 5008770791 , Decode = 2  Mux = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_0_c7 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 5008770791 , Decode = 2  Mux = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
Best config: CDN_DP_region_2_0_c7 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 5008770791 , Decode = 2  Mux = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
  Smallest config area : 5008770791.  Fastest config wns;  0
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Summary table of configs (Best config is CDN_DP_region_2_0_c7)
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>                     0                  1                  2                  3                  4                  5                  6                  7            
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>           Area       5008770791         5008770791         5008770791         5008770791         5008770791         5008770791         5008770791         5008770791  
##>            WNS        +23671.80          +23671.80          +23671.80          +23671.80          +23671.80          +23671.80          +23671.80          +23671.80  
##>            TNS                0                  0                  0                  0                  0                  0                  0                  0  
##>    Num Rewrite                0                  0                  0                  0                  0                  0                  0                  0  
##>     Num Factor                0                  0                  0                  0                  0                  0                  0                  0  
##>      Num Share                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num CmultCse                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num Downsize                0                  0                  0                  0                  0                  0                  0                  0  
##>  Num Speculate                0                  0                  0                  0                  0                  0                  0                  0  
##>     Runtime(s)                0                  0                  0                  0                  0                  0                  0                  0  
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>
##>
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Optimization Step DEBUG Table for config CDN_DP_region_2_0_c7
##>
##>                          Step                        Area   (  % Chg)         WNS (Change)          TNS (Change)                Power   (  % Chg)        Runtime (s)        Comment                   
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>EquationExtraction              START             5008770791 (       )    23671.80 (        )          0 (        )                    0 (       )              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>canonicalize_by_names           START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>context_based_simplify          START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>group_csa_final_adder_dp        START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_flatten_critical_muxes_i  START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>create_score                    START             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             5008770791 (  +0.00)    23671.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Committed config: CDN_DP_region_2_0_c7
Info    : Done implementing datapath configurations. [DPOPT-4]
        : Selected 'very_fast' configuration 7 for module 'CDN_DP_region_2_0_c7'.
          Optimizations applied to 'very_fast' configuration:
            rewriting(0), factoring(0), sharing(0), cmultcse(0), downsizing(0), speculation(0)
Info    : Implementing datapath configurations. [DPOPT-3]
        : Implementing datapath configurations for 'CDN_DP_region_3_0'
CSAGen Prep Share:0 Re-Write:0 Speculation: 0
CDN_DP_region_3_0 level = 0 loads = 0 drivers = 0
CDN_DP_region_3_0_c0 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 1473858697 , Decode = 1  Mux = 1  sg = slow     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 skipped
CDN_DP_region_3_0_c1 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 1473858697 , Decode = 1  Mux = 1  sg = fast     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_0_c2 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 1473858697 , Decode = 1  Mux = 1  sg = very_slow
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_0_c3 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 1473858697 , Decode = 1  Mux = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_0_c4 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 1473858697 , Decode = 1  Mux = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_0_c5 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 1473858697 , Decode = 1  Mux = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_0_c6 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 1473858697 , Decode = 1  Mux = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_0_c7 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 1473858697 , Decode = 1  Mux = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
Best config: CDN_DP_region_3_0_c7 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 1473858697 , Decode = 1  Mux = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
  Smallest config area : 1473858697.  Fastest config wns;  0
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Summary table of configs (Best config is CDN_DP_region_3_0_c7)
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>                     0                  1                  2                  3                  4                  5                  6                  7            
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>           Area       1473858697         1473858697         1473858697         1473858697         1473858697         1473858697         1473858697         1473858697  
##>            WNS        +23980.80          +23980.80          +23980.80          +23980.80          +23980.80          +23980.80          +23980.80          +23980.80  
##>            TNS                0                  0                  0                  0                  0                  0                  0                  0  
##>    Num Rewrite                0                  0                  0                  0                  0                  0                  0                  0  
##>     Num Factor                0                  0                  0                  0                  0                  0                  0                  0  
##>      Num Share                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num CmultCse                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num Downsize                0                  0                  0                  0                  0                  0                  0                  0  
##>  Num Speculate                0                  0                  0                  0                  0                  0                  0                  0  
##>     Runtime(s)                0                  0                  0                  0                  0                  0                  0                  0  
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>
##>
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Optimization Step DEBUG Table for config CDN_DP_region_3_0_c7
##>
##>                          Step                        Area   (  % Chg)         WNS (Change)          TNS (Change)                Power   (  % Chg)        Runtime (s)        Comment                   
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>EquationExtraction              START             1473858697 (       )    23980.80 (        )          0 (        )                    0 (       )              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>canonicalize_by_names           START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>context_based_simplify          START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>group_csa_final_adder_dp        START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_flatten_critical_muxes_i  START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>create_score                    START             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             1473858697 (  +0.00)    23980.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Committed config: CDN_DP_region_3_0_c7
Info    : Done implementing datapath configurations. [DPOPT-4]
        : Selected 'very_fast' configuration 7 for module 'CDN_DP_region_3_0_c7'.
          Optimizations applied to 'very_fast' configuration:
            rewriting(0), factoring(0), sharing(0), cmultcse(0), downsizing(0), speculation(0)
Info    : Implementing datapath configurations. [DPOPT-3]
        : Implementing datapath configurations for 'CDN_DP_region_4_0'
CSAGen Prep Share:0 Re-Write:0 Speculation: 0
    MaxCSA: weighted_instance_count is 2483 
      Timing csa_tree...
        Done timing csa_tree.
      Timing add_signed_carry...
        Done timing add_signed_carry.
      Timing csa_tree_262...
        Done timing csa_tree_262.
      Timing add_signed_carry_267...
        Done timing add_signed_carry_267.
      Timing csa_tree_269...
        Done timing csa_tree_269.
      Timing add_signed_carry_274...
        Done timing add_signed_carry_274.
      Timing csa_tree_276...
        Done timing csa_tree_276.
      Timing csa_tree_283...
        Done timing csa_tree_283.
      Timing csa_tree_299...
        Done timing csa_tree_299.
      Timing add_signed_carry_311...
        Done timing add_signed_carry_311.
      Timing csa_tree_313...
        Done timing csa_tree_313.
      Timing add_signed_carry_318...
        Done timing add_signed_carry_318.
      Timing csa_tree_320...
        Done timing csa_tree_320.
      Timing add_signed_carry_325...
        Done timing add_signed_carry_325.
      Timing csa_tree_528...
        Done timing csa_tree_528.
      Timing add_signed_carry_537...
        Done timing add_signed_carry_537.
      Timing csa_tree_539...
        Done timing csa_tree_539.
      Timing add_signed_544...
        Done timing add_signed_544.
      Timing csa_tree_546...
        Done timing csa_tree_546.
      Timing add_signed_561...
        Done timing add_signed_561.
      Timing increment_signed...
        Done timing increment_signed.
      Timing csa_tree_564...
        Done timing csa_tree_564.
      Timing add_signed_carry_569...
        Done timing add_signed_carry_569.
      Timing csa_tree_571...
        Done timing csa_tree_571.
      Timing add_signed_576...
        Done timing add_signed_576.
      Timing csa_tree_578...
        Done timing csa_tree_578.
Info    : Transformed datapath macro. [RTLOPT-40]
        : Transformed 4 datapath macros in module 'CDN_DP_region_4_0_c1' to a form more suitable for further optimization.
      Timing csa_tree_656...
        Done timing csa_tree_656.
Info    : Transformed datapath macro. [RTLOPT-40]
        : Transformed 1 datapath macros in module 'CDN_DP_region_4_0_c2' to a form more suitable for further optimization.
Info    : Transformed datapath macro. [RTLOPT-40]
        : Transformed 4 datapath macros in module 'CDN_DP_region_4_0_c3' to a form more suitable for further optimization.
Info    : Transformed datapath macro. [RTLOPT-40]
        : Transformed 1 datapath macros in module 'CDN_DP_region_4_0_c4' to a form more suitable for further optimization.
Info    : Transformed datapath macro. [RTLOPT-40]
        : Transformed 1 datapath macros in module 'CDN_DP_region_4_0_c5' to a form more suitable for further optimization.
Info    : Transformed datapath macro. [RTLOPT-40]
        : Transformed 4 datapath macros in module 'CDN_DP_region_4_0_c6' to a form more suitable for further optimization.
CDN_DP_region_4_0 level = 0 loads = 0 drivers = 0
CDN_DP_region_4_0_c0 in mash111: area: 9624121133 , DP = 10  sg = slow     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 skipped
CDN_DP_region_4_0_c1 in mash111: area: 18572968361 , CSA = 6  DP = 6  sg = fast     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_4_0_c2 in mash111: area: 9612377239 , CSA = 1  DP = 7  sg = very_slow
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_4_0_c3 in mash111: area: 18572968361 , CSA = 6  DP = 6  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00

CDN_DP_region_4_0_c4 in mash111: area: 9612377239 , CSA = 1  DP = 7  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_4_0_c5 in mash111: area: 9612377239 , CSA = 1  DP = 7  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_4_0_c6 in mash111: area: 18572968361 , CSA = 6  DP = 6  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00

CDN_DP_region_4_0_c7 in mash111: area: 20962850790 , CSA = 8  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00

Best config: CDN_DP_region_4_0_c5 in mash111: area: 9612377239 , CSA = 1  DP = 7  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
  Smallest config area : 9612377239.  Fastest config wns;  0
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Summary table of configs (Best config is CDN_DP_region_4_0_c5)
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>                     0                  1                  2                  3                  4                  5                  6                  7            
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>           Area       9624121133        18572968361         9612377239        18572968361         9612377239         9612377239        18572968361        20962850790  
##>            WNS        +24253.80          +24224.20          +24253.80          +24224.20          +24253.80          +24253.80          +24224.20          +24247.90  
##>            TNS                0                  0                  0                  0                  0                  0                  0                  0  
##>    Num Rewrite                0                  4                  1                  4                  1                  1                  4                  0  
##>     Num Factor                0                  0                  0                  0                  0                  0                  0                  0  
##>      Num Share                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num CmultCse                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num Downsize                0                  0                  0                  0                  0                  0                  0                  0  
##>  Num Speculate                0                  0                  0                  0                  0                  0                  0                  0  
##>     Runtime(s)                0                  1                  0                  1                  0                  0                  1                  7  
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>
##>
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Optimization Step DEBUG Table for config CDN_DP_region_4_0_c5
##>
##>                          Step                        Area   (  % Chg)         WNS (Change)          TNS (Change)                Power   (  % Chg)        Runtime (s)        Comment                   
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>createMaxCarrySave              START             9624121133 (       )    24253.80 (        )          0 (        )                    0 (       )              
##> datapath_rewrite_one_def       START             9624121133 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START             9624121133 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9624121133 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START             9624121133 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9624121133 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END             9624121133 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START             9624121133 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.61)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END             9682840603 (  +0.61)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>canonicalize_by_names           START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> rewrite                        START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              (a,ar) signed_adder_with_extra_input_bits_from --> signed_adder_with_extra_input_bits_to
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> rewrite                        START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              (na,csaa) base_signed_sub_csa_from --> signed_sub_csa_comp_to
##>                                  END             9718072285 (  +0.36)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> rewrite                        START             9682840603 (  -0.36)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              (na,csaa) base_signed_sub_csa_from --> signed_sub_exs_csa_comp_to
##>                                  END             9718072285 (  +0.36)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> rewrite                        START             9682840603 (  -0.36)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              (na,csaa) base_comb_signed_sub_exs_add_from --> comb_signed_sub_exs_add_to
##>                                  END             9794407596 (  +1.15)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> rewrite                        START             9682840603 (  -1.14)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              (na,csaa) base_comb_signed_add_exs_sub_from --> comb_signed_add_exs_sub_to
##>                                  END            15543043709 ( +60.52)    24247.90 (   -5.90)          0 (       0)                    0 (  +0.00)           0  
##> rewrite                        START             9682840603 ( -37.70)    24253.80 (   +5.90)          0 (       0)                    0 (  +0.00)              (na,csaa) base_comb_signed_add_exs_sub_from --> comb_signed_add_exs_sub_to
##>                                  END            10669327699 ( +10.19)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> rewrite                        START             9682840603 (  -9.25)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              (na,csaa) base_comb_signed_add_exs_sub_from --> comb_signed_add_exs_sub_to
##>                                  END            10757406904 ( +11.10)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END             9682840603 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>context_based_simplify          START             9612377239 (  -0.73)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9612377239 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>group_csa_final_adder_dp        START             9612377239 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9612377239 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_flatten_critical_muxes_i  START             9612377239 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9612377239 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>create_score                    START             9612377239 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END             9612377239 (  +0.00)    24253.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Committed config: CDN_DP_region_4_0_c5
Info    : Done implementing datapath configurations. [DPOPT-4]
        : Selected 'very_fast' configuration 5 for module 'CDN_DP_region_4_0_c5'.
          Optimizations applied to 'very_fast' configuration:
            rewriting(1), factoring(0), sharing(0), cmultcse(0), downsizing(0), speculation(0)
Info    : Implementing datapath configurations. [DPOPT-3]
        : Implementing datapath configurations for 'CDN_DP_region_6_0'
CSAGen Prep Share:0 Re-Write:0 Speculation: 0
CDN_DP_region_6_0 level = 0 loads = 0 drivers = 0
CDN_DP_region_6_0_c0 in spi_slave_pll: area: 393420449 , Mux = 1  other = 2  sg = slow     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 skipped
CDN_DP_region_6_0_c1 in spi_slave_pll: area: 393420449 , Mux = 1  other = 2  sg = fast     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_0_c2 in spi_slave_pll: area: 393420449 , Mux = 1  other = 2  sg = very_slow
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_0_c3 in spi_slave_pll: area: 393420449 , Mux = 1  other = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_0_c4 in spi_slave_pll: area: 393420449 , Mux = 1  other = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_0_c5 in spi_slave_pll: area: 393420449 , Mux = 1  other = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_0_c6 in spi_slave_pll: area: 393420449 , Mux = 1  other = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_0_c7 in spi_slave_pll: area: 393420449 , Mux = 1  other = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
Best config: CDN_DP_region_6_0_c7 in spi_slave_pll: area: 393420449 , Mux = 1  other = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
  Smallest config area : 393420449.  Fastest config wns;  0
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Summary table of configs (Best config is CDN_DP_region_6_0_c7)
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>                     0                  1                  2                  3                  4                  5                  6                  7            
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>           Area        393420449          393420449          393420449          393420449          393420449          393420449          393420449          393420449  
##>            WNS        +23955.90          +23955.90          +23955.90          +23955.90          +23955.90          +23955.90          +23955.90          +23955.90  
##>            TNS                0                  0                  0                  0                  0                  0                  0                  0  
##>    Num Rewrite                0                  0                  0                  0                  0                  0                  0                  0  
##>     Num Factor                0                  0                  0                  0                  0                  0                  0                  0  
##>      Num Share                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num CmultCse                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num Downsize                0                  0                  0                  0                  0                  0                  0                  0  
##>  Num Speculate                0                  0                  0                  0                  0                  0                  0                  0  
##>     Runtime(s)                0                  0                  0                  0                  0                  0                  0                  0  
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>
##>
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Optimization Step DEBUG Table for config CDN_DP_region_6_0_c7
##>
##>                          Step                        Area   (  % Chg)         WNS (Change)          TNS (Change)                Power   (  % Chg)        Runtime (s)        Comment                   
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>EquationExtraction              START              393420449 (       )    23955.90 (        )          0 (        )                    0 (       )              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>canonicalize_by_names           START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>context_based_simplify          START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>group_csa_final_adder_dp        START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_flatten_critical_muxes_i  START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>create_score                    START              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              393420449 (  +0.00)    23955.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Committed config: CDN_DP_region_6_0_c7
Info    : Done implementing datapath configurations. [DPOPT-4]
        : Selected 'very_fast' configuration 7 for module 'CDN_DP_region_6_0_c7'.
          Optimizations applied to 'very_fast' configuration:
            rewriting(0), factoring(0), sharing(0), cmultcse(0), downsizing(0), speculation(0)
Info    : Implementing datapath configurations. [DPOPT-3]
        : Implementing datapath configurations for 'CDN_DP_region_3_1'
CSAGen Prep Share:0 Re-Write:0 Speculation: 0
    MaxCSA: weighted_instance_count is 32 
    MaxCSA: weighted_instance_count is 6 
Info    : Transformed datapath macro. [RTLOPT-40]
        : Transformed 1 datapath macros in module 'CDN_DP_region_3_1_c7' to a form more suitable for further optimization.
      Timing increment_unsigned...
        Done timing increment_unsigned.
      Timing increment_unsigned_1270_1274...
        Done timing increment_unsigned_1270_1274.
Info    : Transformed datapath macro. [RTLOPT-40]
        : Transformed 1 datapath macros in module 'CDN_DP_region_3_1_c1' to a form more suitable for further optimization.
      Timing increment_unsigned_1270_1284...
        Done timing increment_unsigned_1270_1284.
Info    : Transformed datapath macro. [RTLOPT-40]
        : Transformed 1 datapath macros in module 'CDN_DP_region_3_1_c2' to a form more suitable for further optimization.
      Timing increment_unsigned_1270_1298...
        Done timing increment_unsigned_1270_1298.
Info    : Transformed datapath macro. [RTLOPT-40]
        : Transformed 1 datapath macros in module 'CDN_DP_region_3_1_c3' to a form more suitable for further optimization.
      Timing increment_unsigned_1270_1312...
        Done timing increment_unsigned_1270_1312.
Info    : Transformed datapath macro. [RTLOPT-40]
        : Transformed 1 datapath macros in module 'CDN_DP_region_3_1_c4' to a form more suitable for further optimization.
      Timing increment_unsigned_1270_1326...
        Done timing increment_unsigned_1270_1326.
Info    : Transformed datapath macro. [RTLOPT-40]
        : Transformed 1 datapath macros in module 'CDN_DP_region_3_1_c5' to a form more suitable for further optimization.
      Timing increment_unsigned_1270_1340...
        Done timing increment_unsigned_1270_1340.
Info    : Transformed datapath macro. [RTLOPT-40]
        : Transformed 1 datapath macros in module 'CDN_DP_region_3_1_c6' to a form more suitable for further optimization.
      Timing increment_unsigned_1270_1354...
        Done timing increment_unsigned_1270_1354.
CDN_DP_region_3_1 level = 0 loads = 0 drivers = 0
CDN_DP_region_3_1_c0 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 769225057 , DP = 3  Mux = 1  other = 2  sg = slow     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 skipped
CDN_DP_region_3_1_c1 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 716377534 , DP = 2  other = 2  sg = fast     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_1_c2 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 716377534 , DP = 2  other = 2  sg = very_slow
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_1_c3 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 716377534 , DP = 2  other = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_1_c4 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 716377534 , DP = 2  other = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_1_c5 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 716377534 , DP = 2  other = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_1_c6 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 716377534 , DP = 2  other = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_1_c7 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 833816474 , DP = 2  Mux = 1  other = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00

Best config: CDN_DP_region_3_1_c6 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 716377534 , DP = 2  other = 2  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
  Smallest config area : 716377534.  Fastest config wns;  0
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Summary table of configs (Best config is CDN_DP_region_3_1_c6)
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>                     0                  1                  2                  3                  4                  5                  6                  7            
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>           Area        769225057          716377534          716377534          716377534          716377534          716377534          716377534          833816474  
##>            WNS         +5352.30           +5045.10           +5045.10           +5045.10           +5045.10           +5045.10           +5045.10           +4859.50  
##>            TNS                0                  0                  0                  0                  0                  0                  0                  0  
##>    Num Rewrite                0                  1                  1                  1                  1                  1                  1                  1  
##>     Num Factor                0                  0                  0                  0                  0                  0                  0                  0  
##>      Num Share                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num CmultCse                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num Downsize                0                  0                  0                  0                  0                  0                  0                  0  
##>  Num Speculate                0                  0                  0                  0                  0                  0                  0                  0  
##>     Runtime(s)                0                  0                  0                  0                  0                  0                  0                  0  
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>
##>
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Optimization Step DEBUG Table for config CDN_DP_region_3_1_c6
##>
##>                          Step                        Area   (  % Chg)         WNS (Change)          TNS (Change)                Power   (  % Chg)        Runtime (s)        Comment                   
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>createMaxCarrySave              START              769225057 (       )    107379534.70 (        )          0 (        )                    0 (       )              
##> datapath_rewrite_one_def       START              769225057 (  +0.00)    107379534.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START              769225057 (  +0.00)    107379534.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              769225057 (  +0.00)    107379534.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START              769225057 (  +0.00)    107379534.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              769225057 (  +0.00)    107379534.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  rewrite                       START              769225057 (  +0.00)    107379534.70 (   +0.00)          0 (       0)                    0 (  +0.00)              (a,csaa) inc_dec_with_select --> inc_dec_with_xor
##>                                  END              733993375 (  -4.58)    107379191.50 ( -343.20)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START              733993375 (  +0.00)    107379191.50 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              733993375 (  +0.00)    107379191.50 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START              733993375 (  +0.00)    107379191.50 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              733993375 (  +0.00)    107379191.50 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              733993375 (  -4.58)    107379191.50 ( -343.20)          0 (       0)                    0 (  +0.00)           0  
##> dpopt_share_one_def            START              733993375 (  +0.00)    107379191.50 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              733993375 (  +0.00)    107379191.50 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START              733993375 (  +0.00)    214748364.70 (+107369173.20)          0 (       0)                    0 (  +0.00)              
##>                                  END              745737269 (  +1.60)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              745737269 (  -3.05)    214748364.70 (+107368830.00)          0 (       0)                    0 (  +0.00)           0  
##>canonicalize_by_names           START              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> dpopt_share_one_def            START              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              745737269 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>context_based_simplify          START              722249481 (  -3.15)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              716377534 (  -0.81)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>group_csa_final_adder_dp        START              716377534 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              716377534 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_flatten_critical_muxes_i  START              716377534 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              716377534 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>create_score                    START              716377534 (  +0.00)     5045.10 (-214743319.60)          0 (       0)                    0 (  +0.00)              
##>                                  END              716377534 (  +0.00)     5045.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Committed config: CDN_DP_region_3_1_c6
Info    : Done implementing datapath configurations. [DPOPT-4]
        : Selected 'very_fast' configuration 6 for module 'CDN_DP_region_3_1_c6'.
          Optimizations applied to 'very_fast' configuration:
            rewriting(1), factoring(0), sharing(0), cmultcse(0), downsizing(0), speculation(0)
Info    : Optimized a mux chain. [DPOPT-10]
        : Created Flattened Mux 'F_mux_count_42_40' in design 'CDN_DP_region_2_1'.
	The following set of instances are flattened ( mux_count_42_40 mux_count_52_29 ).

Info    : Implementing datapath configurations. [DPOPT-3]
        : Implementing datapath configurations for 'CDN_DP_region_2_1'
CSAGen Prep Share:0 Re-Write:0 Speculation: 0
    MaxCSA: weighted_instance_count is 32 
    MaxCSA: weighted_instance_count is 4 
      Timing increment_unsigned_1373...
        Done timing increment_unsigned_1373.
Warning : Inferred datapath logic has changed and cannot be considered for datapath optimizations. [RTLOPT-55]
        : Module 'CDN_DP_region_2_1_c7' has been invalidated for datapath optimizations.
        : For best results, ensure this command is issued after syn_map, when all datapath optimizations have finished.
      Timing addsub_signed_1380...
        Done timing addsub_signed_1380.
Warning : Inferred datapath logic has changed and cannot be considered for datapath optimizations. [RTLOPT-55]
        : Module 'CDN_DP_region_2_1_c7' has been invalidated for datapath optimizations.
Info    : Accepted resource sharing opportunity. [RTLOPT-30]
        : Merged the following sets of instances in 'CDN_DP_region_2_1_c7 in fifo_miso_DEPTH8_ADDR_WIDTH3':
	  (SUB_TC_OP, ADD_TC_OP)

      Timing increment_unsigned_1402...
        Done timing increment_unsigned_1402.
      Timing decrement_unsigned...
        Done timing decrement_unsigned.
Warning : Inferred datapath logic has changed and cannot be considered for datapath optimizations. [RTLOPT-55]
        : Module 'CDN_DP_region_2_1_c1' has been invalidated for datapath optimizations.
      Timing addsub_unsigned_1408...
        Done timing addsub_unsigned_1408.
      Timing decrement_unsigned_1414_1421...
        Done timing decrement_unsigned_1414_1421.
      Timing increment_unsigned_1413_1422...
        Done timing increment_unsigned_1413_1422.
Warning : Inferred datapath logic has changed and cannot be considered for datapath optimizations. [RTLOPT-55]
        : Module 'CDN_DP_region_2_1_c2' has been invalidated for datapath optimizations.
      Timing decrement_unsigned_1414_1447...
        Done timing decrement_unsigned_1414_1447.
      Timing increment_unsigned_1413_1448...
        Done timing increment_unsigned_1413_1448.
Warning : Inferred datapath logic has changed and cannot be considered for datapath optimizations. [RTLOPT-55]
        : Module 'CDN_DP_region_2_1_c3' has been invalidated for datapath optimizations.
      Timing decrement_unsigned_1414_1473...
        Done timing decrement_unsigned_1414_1473.
      Timing increment_unsigned_1413_1474...
        Done timing increment_unsigned_1413_1474.
Warning : Inferred datapath logic has changed and cannot be considered for datapath optimizations. [RTLOPT-55]
        : Module 'CDN_DP_region_2_1_c4' has been invalidated for datapath optimizations.
      Timing decrement_unsigned_1414_1499...
        Done timing decrement_unsigned_1414_1499.
      Timing increment_unsigned_1413_1500...
        Done timing increment_unsigned_1413_1500.
Warning : Inferred datapath logic has changed and cannot be considered for datapath optimizations. [RTLOPT-55]
        : Module 'CDN_DP_region_2_1_c5' has been invalidated for datapath optimizations.
      Timing decrement_unsigned_1414_1525...
        Done timing decrement_unsigned_1414_1525.
      Timing increment_unsigned_1413_1526...
        Done timing increment_unsigned_1413_1526.
Warning : Inferred datapath logic has changed and cannot be considered for datapath optimizations. [RTLOPT-55]
        : Module 'CDN_DP_region_2_1_c6' has been invalidated for datapath optimizations.
Warning : Inferred datapath logic has changed and cannot be considered for datapath optimizations. [RTLOPT-55]
        : Module 'CDN_DP_region_2_1_c6' has been invalidated for datapath optimizations.
Warning : Inferred datapath logic has changed and cannot be considered for datapath optimizations. [RTLOPT-55]
        : Module 'CDN_DP_region_2_1_c6' has been invalidated for datapath optimizations.
      Timing decrement_unsigned_1414_1569...
        Done timing decrement_unsigned_1414_1569.
      Timing increment_unsigned_1413_1570...
        Done timing increment_unsigned_1413_1570.
CDN_DP_region_2_1 level = 0 loads = 0 drivers = 0
CDN_DP_region_2_1_c0 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 833816474 , DP = 3  Mux = 2  other = 7  sg = slow     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 skipped
CDN_DP_region_2_1_c1 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 710505587 , DP = 3  Mux = 2  other = 7  sg = fast     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_1_c2 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 710505587 , DP = 3  Mux = 2  other = 7  sg = very_slow
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_1_c3 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 710505587 , DP = 3  Mux = 2  other = 7  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_1_c4 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 710505587 , DP = 3  Mux = 2  other = 7  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_1_c5 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 710505587 , DP = 3  Mux = 2  other = 7  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_1_c6 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 710505587 , DP = 3  Mux = 2  other = 7  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_1_c7 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 910151785 , DP = 2  Mux = 2  other = 7  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00

Best config: CDN_DP_region_2_1_c6 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 710505587 , DP = 3  Mux = 2  other = 7  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
  Smallest config area : 710505587.  Fastest config wns;  0
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Summary table of configs (Best config is CDN_DP_region_2_1_c6)
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>                     0                  1                  2                  3                  4                  5                  6                  7            
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>           Area        833816474          710505587          710505587          710505587          710505587          710505587          710505587          910151785  
##>            WNS        +23409.20          +23409.20          +23409.20          +23409.20          +23409.20          +23409.20          +23409.20          +22919.80  
##>            TNS                0                  0                  0                  0                  0                  0                  0                  0  
##>    Num Rewrite                0                  0                  0                  0                  0                  0                  0                  0  
##>     Num Factor                0                  0                  0                  0                  0                  0                  0                  0  
##>      Num Share                0                  0                  0                  0                  0                  0                  0                  1  
##>   Num CmultCse                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num Downsize                0                  0                  0                  0                  0                  0                  0                  0  
##>  Num Speculate                0                  0                  0                  0                  0                  0                  0                  0  
##>     Runtime(s)                0                  0                  0                  0                  0                  0                  0                  0  
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>
##>
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Optimization Step DEBUG Table for config CDN_DP_region_2_1_c6
##>
##>                          Step                        Area   (  % Chg)         WNS (Change)          TNS (Change)                Power   (  % Chg)        Runtime (s)        Comment                   
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>createMaxCarrySave              START              833816474 (       )    107397591.60 (        )          0 (        )                    0 (       )              
##> datapath_rewrite_one_def       START              833816474 (  +0.00)    107397591.60 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START              833816474 (  +0.00)    107397591.60 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              833816474 (  +0.00)    107397591.60 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START              833816474 (  +0.00)    107397591.60 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              833816474 (  +0.00)    107397591.60 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              833816474 (  +0.00)    107397591.60 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> dpopt_share_one_def            START              833816474 (  +0.00)    107397591.60 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              833816474 (  +0.00)    107397591.60 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START              833816474 (  +0.00)    214748364.70 (+107350773.10)          0 (       0)                    0 (  +0.00)              
##>                                  END              874920103 (  +4.93)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              874920103 (  +4.93)    214748364.70 (+107350773.10)          0 (       0)                    0 (  +0.00)           0  
##>canonicalize_by_names           START              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> dpopt_share_one_def            START              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              874920103 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>context_based_simplify          START              798584792 (  -8.72)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              710505587 ( -11.03)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>group_csa_final_adder_dp        START              710505587 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              710505587 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_flatten_critical_muxes_i  START              710505587 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              710505587 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>create_score                    START              710505587 (  +0.00)    23409.20 (-214724955.50)          0 (       0)                    0 (  +0.00)              
##>                                  END              710505587 (  +0.00)    23409.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Committed config: CDN_DP_region_2_1_c6
Info    : Done implementing datapath configurations. [DPOPT-4]
        : Selected 'very_fast' configuration 6 for module 'CDN_DP_region_2_1_c6'.
          Optimizations applied to 'very_fast' configuration:
            rewriting(0), factoring(0), sharing(0), cmultcse(0), downsizing(0), speculation(0)
Info    : Optimized a mux chain. [DPOPT-10]
        : Created Flattened Mux 'F_mux_mosi_bit_counter_32_18' in design 'CDN_DP_region_6_1'.
	The following set of instances are flattened ( mux_mosi_bit_counter_32_18 mux_mosi_bit_counter_38_30 ).

Info    : Implementing datapath configurations. [DPOPT-3]
        : Implementing datapath configurations for 'CDN_DP_region_6_1'
CSAGen Prep Share:0 Re-Write:0 Speculation: 0
    MaxCSA: weighted_instance_count is 10 
      Timing increment_unsigned_1579...
        Done timing increment_unsigned_1579.
      Timing increment_unsigned_1581_1585...
        Done timing increment_unsigned_1581_1585.
      Timing increment_unsigned_1581_1592...
        Done timing increment_unsigned_1581_1592.
      Timing increment_unsigned_1581_1599...
        Done timing increment_unsigned_1581_1599.
      Timing increment_unsigned_1581_1606...
        Done timing increment_unsigned_1581_1606.
      Timing increment_unsigned_1581_1613...
        Done timing increment_unsigned_1581_1613.
      Timing increment_unsigned_1581_1620...
        Done timing increment_unsigned_1581_1620.
      Timing increment_unsigned_1581_1627...
        Done timing increment_unsigned_1581_1627.
CDN_DP_region_6_1 level = 0 loads = 0 drivers = 0
CDN_DP_region_6_1_c0 in spi_slave_pll: area: 364060714 , DP = 1  Mux = 3  other = 6  sg = slow     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 skipped
CDN_DP_region_6_1_c1 in spi_slave_pll: area: 322957085 , DP = 1  Mux = 3  other = 6  sg = fast     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_1_c2 in spi_slave_pll: area: 322957085 , DP = 1  Mux = 3  other = 6  sg = very_slow
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_1_c3 in spi_slave_pll: area: 322957085 , DP = 1  Mux = 3  other = 6  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_1_c4 in spi_slave_pll: area: 322957085 , DP = 1  Mux = 3  other = 6  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_1_c5 in spi_slave_pll: area: 322957085 , DP = 1  Mux = 3  other = 6  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_1_c6 in spi_slave_pll: area: 322957085 , DP = 1  Mux = 3  other = 6  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_1_c7 in spi_slave_pll: area: 322957085 , DP = 1  Mux = 3  other = 6  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
Best config: CDN_DP_region_6_1_c7 in spi_slave_pll: area: 322957085 , DP = 1  Mux = 3  other = 6  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
  Smallest config area : 322957085.  Fastest config wns;  0
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Summary table of configs (Best config is CDN_DP_region_6_1_c7)
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>                     0                  1                  2                  3                  4                  5                  6                  7            
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>           Area        364060714          322957085          322957085          322957085          322957085          322957085          322957085          322957085  
##>            WNS        +30200.70          +30200.70          +30200.70          +30200.70          +30200.70          +30200.70          +30200.70          +30200.70  
##>            TNS                0                  0                  0                  0                  0                  0                  0                  0  
##>    Num Rewrite                0                  0                  0                  0                  0                  0                  0                  0  
##>     Num Factor                0                  0                  0                  0                  0                  0                  0                  0  
##>      Num Share                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num CmultCse                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num Downsize                0                  0                  0                  0                  0                  0                  0                  0  
##>  Num Speculate                0                  0                  0                  0                  0                  0                  0                  0  
##>     Runtime(s)                0                  0                  0                  0                  0                  0                  0                  0  
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>
##>
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Optimization Step DEBUG Table for config CDN_DP_region_6_1_c7
##>
##>                          Step                        Area   (  % Chg)         WNS (Change)          TNS (Change)                Power   (  % Chg)        Runtime (s)        Comment                   
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>EquationExtraction              START              364060714 (       )    30200.70 (        )          0 (        )                    0 (       )              
##> rewrite                        START              475627707 ( +30.65)    30171.60 (  -29.10)          0 (       0)                    0 (  +0.00)              (a,ar) Expr5_from --> Expr5_to
##>                                  END              728121428 ( +53.09)    30171.60 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              364060714 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START              364060714 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START              364060714 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              364060714 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START              364060714 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              369932661 (  +1.61)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              369932661 (  +1.61)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>canonicalize_by_names           START              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              369932661 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>context_based_simplify          START              346444873 (  -6.35)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              322957085 (  -6.78)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>group_csa_final_adder_dp        START              322957085 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              322957085 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_flatten_critical_muxes_i  START              322957085 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              322957085 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>create_score                    START              322957085 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              322957085 (  +0.00)    30200.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Committed config: CDN_DP_region_6_1_c7
Info    : Done implementing datapath configurations. [DPOPT-4]
        : Selected 'very_fast' configuration 7 for module 'CDN_DP_region_6_1_c7'.
          Optimizations applied to 'very_fast' configuration:
            rewriting(0), factoring(0), sharing(0), cmultcse(0), downsizing(0), speculation(0)
Info    : Implementing datapath configurations. [DPOPT-3]
        : Implementing datapath configurations for 'CDN_DP_region_6_4'
CSAGen Prep Share:0 Re-Write:1 Speculation: 0
    MaxCSA: weighted_instance_count is 12 
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'g1' of datapath component 'sub_unsigned_1635'.
Info    : Transformed datapath macro. [RTLOPT-40]
        : Transformed 1 datapath macros in module 'CDN_DP_region_6_4_c7' to a form more suitable for further optimization.
      Timing lt_unsigned_1636_1638...
        Done timing lt_unsigned_1636_1638.
      Timing gt_unsigned_186_rtlopto_model_1640...
        Done timing gt_unsigned_186_rtlopto_model_1640.
      Timing gt_unsigned_186_rtlopto_model_1642...
        Done timing gt_unsigned_186_rtlopto_model_1642.
      Timing gt_unsigned_186_rtlopto_model_1644...
        Done timing gt_unsigned_186_rtlopto_model_1644.
      Timing gt_unsigned_186_rtlopto_model_1646...
        Done timing gt_unsigned_186_rtlopto_model_1646.
      Timing gt_unsigned_186_rtlopto_model_1648...
        Done timing gt_unsigned_186_rtlopto_model_1648.
      Timing gt_unsigned_186_rtlopto_model_1650...
        Done timing gt_unsigned_186_rtlopto_model_1650.
CDN_DP_region_6_4 level = 0 loads = 0 drivers = 0
CDN_DP_region_6_4_c0 in spi_slave_pll: area: 76335311 , DP = 1  sg = slow     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 skipped
CDN_DP_region_6_4_c1 in spi_slave_pll: area: 46975576 , DP = 1  sg = fast     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_4_c2 in spi_slave_pll: area: 46975576 , DP = 1  sg = very_slow
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_4_c3 in spi_slave_pll: area: 46975576 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_4_c4 in spi_slave_pll: area: 46975576 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_4_c5 in spi_slave_pll: area: 46975576 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_4_c6 in spi_slave_pll: area: 46975576 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_4_c7 in spi_slave_pll: area: 46975576 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
Best config: CDN_DP_region_6_4_c7 in spi_slave_pll: area: 46975576 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
  Smallest config area : 46975576.  Fastest config wns;  0
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Summary table of configs (Best config is CDN_DP_region_6_4_c7)
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>                     0                  1                  2                  3                  4                  5                  6                  7            
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>           Area         76335311           46975576           46975576           46975576           46975576           46975576           46975576           46975576  
##>            WNS        +23705.20          +23805.10          +23805.10          +23805.10          +23805.10          +23805.10          +23805.10          +23805.10  
##>            TNS                0                  0                  0                  0                  0                  0                  0                  0  
##>    Num Rewrite                0                  0                  0                  0                  0                  0                  0                  2  
##>     Num Factor                0                  0                  0                  0                  0                  0                  0                  0  
##>      Num Share                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num CmultCse                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num Downsize                0                  0                  0                  0                  0                  0                  0                  0  
##>  Num Speculate                0                  0                  0                  0                  0                  0                  0                  0  
##>     Runtime(s)                0                  0                  0                  0                  0                  0                  0                  0  
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>
##>
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Optimization Step DEBUG Table for config CDN_DP_region_6_4_c7
##>
##>                          Step                        Area   (  % Chg)         WNS (Change)          TNS (Change)                Power   (  % Chg)        Runtime (s)        Comment                   
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>EquationExtraction              START               76335311 (       )    23705.20 (        )          0 (        )                    0 (       )              
##> rewrite                        START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              (a,ar) greater_than_from_uns --> greater_than_to_uns
##>                                  END              146798675 ( +92.31)    23649.70 (  -55.50)          0 (       0)                    0 (  +0.00)           0  
##> rewrite                        START              328829032 (+124.00)    23640.10 (   -9.60)          0 (       0)                    0 (  +0.00)              (a,ar) Expr6_from --> Expr6_to
##>                                  END              616554435 ( +87.50)    23631.10 (   -9.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              146798675 ( +92.31)    23649.70 (  -55.50)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START              146798675 (  +0.00)    23649.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START              146798675 (  +0.00)    23649.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              146798675 (  +0.00)    23649.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START              146798675 (  +0.00)    23649.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              146798675 (  +0.00)    23649.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              146798675 (  +0.00)    23649.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>canonicalize_by_names           START              146798675 (  +0.00)    23649.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              146798675 (  +0.00)    23649.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START              146798675 (  +0.00)    23649.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> rewrite                        START              146798675 (  +0.00)    23649.70 (   +0.00)          0 (       0)                    0 (  +0.00)              (a,csaa) less_than_to_uns_reverse --> less_than_from_uns_reverse
##>                                  END               76335311 ( -48.00)    23705.20 (  +55.50)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               76335311 ( -48.00)    23705.20 (  +55.50)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>context_based_simplify          START               76335311 (  +0.00)    23705.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               46975576 ( -38.46)    23805.10 (  +99.90)          0 (       0)                    0 (  +0.00)           0  
##>group_csa_final_adder_dp        START               46975576 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               46975576 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_flatten_critical_muxes_i  START               46975576 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               46975576 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>create_score                    START               46975576 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               46975576 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Committed config: CDN_DP_region_6_4_c7
Info    : Done implementing datapath configurations. [DPOPT-4]
        : Selected 'very_fast' configuration 7 for module 'CDN_DP_region_6_4_c7'.
          Optimizations applied to 'very_fast' configuration:
            rewriting(2), factoring(0), sharing(0), cmultcse(0), downsizing(0), speculation(0)
Info    : Implementing datapath configurations. [DPOPT-3]
        : Implementing datapath configurations for 'CDN_DP_region_6_3'
CSAGen Prep Share:0 Re-Write:0 Speculation: 0
    MaxCSA: weighted_instance_count is 12 
      Timing lt_unsigned_184_rtlopto_model_1655...
        Done timing lt_unsigned_184_rtlopto_model_1655.
      Timing lt_unsigned_184_rtlopto_model_1657...
        Done timing lt_unsigned_184_rtlopto_model_1657.
      Timing lt_unsigned_184_rtlopto_model_1659...
        Done timing lt_unsigned_184_rtlopto_model_1659.
      Timing lt_unsigned_184_rtlopto_model_1661...
        Done timing lt_unsigned_184_rtlopto_model_1661.
      Timing lt_unsigned_184_rtlopto_model_1663...
        Done timing lt_unsigned_184_rtlopto_model_1663.
      Timing lt_unsigned_184_rtlopto_model_1665...
        Done timing lt_unsigned_184_rtlopto_model_1665.
      Timing lt_unsigned_184_rtlopto_model_1667...
        Done timing lt_unsigned_184_rtlopto_model_1667.
CDN_DP_region_6_3 level = 0 loads = 0 drivers = 0
CDN_DP_region_6_3_c0 in spi_slave_pll: area: 64591417 , DP = 1  sg = slow     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 skipped
CDN_DP_region_6_3_c1 in spi_slave_pll: area: 46975576 , DP = 1  sg = fast     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_3_c2 in spi_slave_pll: area: 46975576 , DP = 1  sg = very_slow
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_3_c3 in spi_slave_pll: area: 46975576 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_3_c4 in spi_slave_pll: area: 46975576 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_3_c5 in spi_slave_pll: area: 46975576 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_3_c6 in spi_slave_pll: area: 46975576 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_3_c7 in spi_slave_pll: area: 46975576 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
Best config: CDN_DP_region_6_3_c7 in spi_slave_pll: area: 46975576 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
  Smallest config area : 46975576.  Fastest config wns;  0
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Summary table of configs (Best config is CDN_DP_region_6_3_c7)
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>                     0                  1                  2                  3                  4                  5                  6                  7            
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>           Area         64591417           46975576           46975576           46975576           46975576           46975576           46975576           46975576  
##>            WNS        +30213.00          +30213.00          +30213.00          +30213.00          +30213.00          +30213.00          +30213.00          +30213.00  
##>            TNS                0                  0                  0                  0                  0                  0                  0                  0  
##>    Num Rewrite                0                  0                  0                  0                  0                  0                  0                  0  
##>     Num Factor                0                  0                  0                  0                  0                  0                  0                  0  
##>      Num Share                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num CmultCse                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num Downsize                0                  0                  0                  0                  0                  0                  0                  0  
##>  Num Speculate                0                  0                  0                  0                  0                  0                  0                  0  
##>     Runtime(s)                0                  0                  0                  0                  0                  0                  0                  0  
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>
##>
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Optimization Step DEBUG Table for config CDN_DP_region_6_3_c7
##>
##>                          Step                        Area   (  % Chg)         WNS (Change)          TNS (Change)                Power   (  % Chg)        Runtime (s)        Comment                   
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>EquationExtraction              START               64591417 (       )    30213.00 (        )          0 (        )                    0 (       )              
##> rewrite                        START              176158410 (+172.73)    30200.70 (  -12.30)          0 (       0)                    0 (  +0.00)              (a,ar) Expr7_from --> Expr7_to
##>                                  END              534347177 (+203.33)    30191.80 (   -8.90)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>canonicalize_by_names           START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>context_based_simplify          START               64591417 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               46975576 ( -27.27)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>group_csa_final_adder_dp        START               46975576 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               46975576 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_flatten_critical_muxes_i  START               46975576 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               46975576 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>create_score                    START               46975576 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               46975576 (  +0.00)    30213.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Committed config: CDN_DP_region_6_3_c7
Info    : Done implementing datapath configurations. [DPOPT-4]
        : Selected 'very_fast' configuration 7 for module 'CDN_DP_region_6_3_c7'.
          Optimizations applied to 'very_fast' configuration:
            rewriting(0), factoring(0), sharing(0), cmultcse(0), downsizing(0), speculation(0)
Info    : Implementing datapath configurations. [DPOPT-3]
        : Implementing datapath configurations for 'CDN_DP_region_6_2'
CSAGen Prep Share:0 Re-Write:0 Speculation: 0
    MaxCSA: weighted_instance_count is 10 
      Timing decrement_unsigned_1671...
        Done timing decrement_unsigned_1671.
      Timing decrement_unsigned_1673_1675...
        Done timing decrement_unsigned_1673_1675.
      Timing decrement_unsigned_1673_1680...
        Done timing decrement_unsigned_1673_1680.
      Timing decrement_unsigned_1673_1685...
        Done timing decrement_unsigned_1673_1685.
      Timing decrement_unsigned_1673_1690...
        Done timing decrement_unsigned_1673_1690.
      Timing decrement_unsigned_1673_1695...
        Done timing decrement_unsigned_1673_1695.
      Timing decrement_unsigned_1673_1700...
        Done timing decrement_unsigned_1673_1700.
      Timing decrement_unsigned_1673_1705...
        Done timing decrement_unsigned_1673_1705.
CDN_DP_region_6_2 level = 0 loads = 0 drivers = 0
CDN_DP_region_6_2_c0 in spi_slave_pll: area: 117438940 , DP = 1  sg = slow     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 skipped
CDN_DP_region_6_2_c1 in spi_slave_pll: area: 99823099 , DP = 1  sg = fast     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_2_c2 in spi_slave_pll: area: 99823099 , DP = 1  sg = very_slow
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_2_c3 in spi_slave_pll: area: 99823099 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_2_c4 in spi_slave_pll: area: 99823099 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_2_c5 in spi_slave_pll: area: 99823099 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_2_c6 in spi_slave_pll: area: 99823099 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_6_2_c7 in spi_slave_pll: area: 99823099 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
Best config: CDN_DP_region_6_2_c7 in spi_slave_pll: area: 99823099 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
  Smallest config area : 99823099.  Fastest config wns;  0
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Summary table of configs (Best config is CDN_DP_region_6_2_c7)
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>                     0                  1                  2                  3                  4                  5                  6                  7            
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>           Area        117438940           99823099           99823099           99823099           99823099           99823099           99823099           99823099  
##>            WNS        +23805.10          +23805.10          +23805.10          +23805.10          +23805.10          +23805.10          +23805.10          +23805.10  
##>            TNS                0                  0                  0                  0                  0                  0                  0                  0  
##>    Num Rewrite                0                  0                  0                  0                  0                  0                  0                  0  
##>     Num Factor                0                  0                  0                  0                  0                  0                  0                  0  
##>      Num Share                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num CmultCse                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num Downsize                0                  0                  0                  0                  0                  0                  0                  0  
##>  Num Speculate                0                  0                  0                  0                  0                  0                  0                  0  
##>     Runtime(s)                0                  0                  0                  0                  0                  0                  0                  0  
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>
##>
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Optimization Step DEBUG Table for config CDN_DP_region_6_2_c7
##>
##>                          Step                        Area   (  % Chg)         WNS (Change)          TNS (Change)                Power   (  % Chg)        Runtime (s)        Comment                   
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>EquationExtraction              START              117438940 (       )    23805.10 (        )          0 (        )                    0 (       )              
##> rewrite                        START              299469297 (+155.00)    23776.00 (  -29.10)          0 (       0)                    0 (  +0.00)              (a,ar) Expr8_from --> Expr8_to
##>                                  END              504987442 ( +68.63)    23776.00 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              117438940 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START              117438940 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START              117438940 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              117438940 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START              117438940 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              158542569 ( +35.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              158542569 ( +35.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>canonicalize_by_names           START              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END              158542569 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>context_based_simplify          START              129182834 ( -18.52)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               99823099 ( -22.73)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>group_csa_final_adder_dp        START               99823099 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               99823099 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_flatten_critical_muxes_i  START               99823099 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               99823099 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>create_score                    START               99823099 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               99823099 (  +0.00)    23805.10 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Committed config: CDN_DP_region_6_2_c7
Info    : Done implementing datapath configurations. [DPOPT-4]
        : Selected 'very_fast' configuration 7 for module 'CDN_DP_region_6_2_c7'.
          Optimizations applied to 'very_fast' configuration:
            rewriting(0), factoring(0), sharing(0), cmultcse(0), downsizing(0), speculation(0)
Info    : Implementing datapath configurations. [DPOPT-3]
        : Implementing datapath configurations for 'CDN_DP_region_3_2'
CSAGen Prep Share:0 Re-Write:0 Speculation: 0
    MaxCSA: weighted_instance_count is 6 
      Timing increment_unsigned_1270_1713...
        Done timing increment_unsigned_1270_1713.
      Timing increment_unsigned_1270_1718...
        Done timing increment_unsigned_1270_1718.
      Timing increment_unsigned_1270_1723...
        Done timing increment_unsigned_1270_1723.
      Timing increment_unsigned_1270_1728...
        Done timing increment_unsigned_1270_1728.
      Timing increment_unsigned_1270_1733...
        Done timing increment_unsigned_1270_1733.
      Timing increment_unsigned_1270_1738...
        Done timing increment_unsigned_1270_1738.
      Timing increment_unsigned_1270_1743...
        Done timing increment_unsigned_1270_1743.
CDN_DP_region_3_2 level = 0 loads = 0 drivers = 0
CDN_DP_region_3_2_c0 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 58719470 , DP = 1  sg = slow     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 skipped
CDN_DP_region_3_2_c1 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = fast     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_2_c2 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_slow
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_2_c3 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_2_c4 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_2_c5 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_2_c6 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_3_2_c7 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
Best config: CDN_DP_region_3_2_c7 in fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
  Smallest config area : 41103629.  Fastest config wns;  0
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Summary table of configs (Best config is CDN_DP_region_3_2_c7)
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>                     0                  1                  2                  3                  4                  5                  6                  7            
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>           Area         58719470           41103629           41103629           41103629           41103629           41103629           41103629           41103629  
##>            WNS        +23857.70          +23857.70          +23857.70          +23857.70          +23857.70          +23857.70          +23857.70          +23857.70  
##>            TNS                0                  0                  0                  0                  0                  0                  0                  0  
##>    Num Rewrite                0                  0                  0                  0                  0                  0                  0                  0  
##>     Num Factor                0                  0                  0                  0                  0                  0                  0                  0  
##>      Num Share                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num CmultCse                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num Downsize                0                  0                  0                  0                  0                  0                  0                  0  
##>  Num Speculate                0                  0                  0                  0                  0                  0                  0                  0  
##>     Runtime(s)                0                  0                  0                  0                  0                  0                  0                  0  
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>
##>
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Optimization Step DEBUG Table for config CDN_DP_region_3_2_c7
##>
##>                          Step                        Area   (  % Chg)         WNS (Change)          TNS (Change)                Power   (  % Chg)        Runtime (s)        Comment                   
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>EquationExtraction              START               58719470 (       )    23857.70 (        )          0 (        )                    0 (       )              
##> rewrite                        START              111566993 ( +90.00)    23833.80 (  -23.90)          0 (       0)                    0 (  +0.00)              (a,ar) Expr9_from --> Expr9_to
##>                                  END              229005933 (+105.26)    23833.80 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               58719470 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START               58719470 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START               58719470 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               58719470 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START               58719470 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 ( +20.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               70463364 ( +20.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>canonicalize_by_names           START               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               70463364 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>context_based_simplify          START               46975576 ( -33.33)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 ( -12.50)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>group_csa_final_adder_dp        START               41103629 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_flatten_critical_muxes_i  START               41103629 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>create_score                    START               41103629 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23857.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Committed config: CDN_DP_region_3_2_c7
Info    : Done implementing datapath configurations. [DPOPT-4]
        : Selected 'very_fast' configuration 7 for module 'CDN_DP_region_3_2_c7'.
          Optimizations applied to 'very_fast' configuration:
            rewriting(0), factoring(0), sharing(0), cmultcse(0), downsizing(0), speculation(0)
Info    : Implementing datapath configurations. [DPOPT-3]
        : Implementing datapath configurations for 'CDN_DP_region_2_4'
CSAGen Prep Share:0 Re-Write:0 Speculation: 0
    MaxCSA: weighted_instance_count is 6 
      Timing increment_unsigned_1270_1751...
        Done timing increment_unsigned_1270_1751.
      Timing increment_unsigned_1270_1756...
        Done timing increment_unsigned_1270_1756.
      Timing increment_unsigned_1270_1761...
        Done timing increment_unsigned_1270_1761.
      Timing increment_unsigned_1270_1766...
        Done timing increment_unsigned_1270_1766.
      Timing increment_unsigned_1270_1771...
        Done timing increment_unsigned_1270_1771.
      Timing increment_unsigned_1270_1776...
        Done timing increment_unsigned_1270_1776.
      Timing increment_unsigned_1270_1781...
        Done timing increment_unsigned_1270_1781.
CDN_DP_region_2_4 level = 0 loads = 0 drivers = 0
CDN_DP_region_2_4_c0 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 58719470 , DP = 1  sg = slow     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 skipped
CDN_DP_region_2_4_c1 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = fast     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_4_c2 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_slow
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_4_c3 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_4_c4 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_4_c5 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_4_c6 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_4_c7 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
Best config: CDN_DP_region_2_4_c7 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
  Smallest config area : 41103629.  Fastest config wns;  0
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Summary table of configs (Best config is CDN_DP_region_2_4_c7)
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>                     0                  1                  2                  3                  4                  5                  6                  7            
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>           Area         58719470           41103629           41103629           41103629           41103629           41103629           41103629           41103629  
##>            WNS        +23860.20          +23860.20          +23860.20          +23860.20          +23860.20          +23860.20          +23860.20          +23860.20  
##>            TNS                0                  0                  0                  0                  0                  0                  0                  0  
##>    Num Rewrite                0                  0                  0                  0                  0                  0                  0                  0  
##>     Num Factor                0                  0                  0                  0                  0                  0                  0                  0  
##>      Num Share                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num CmultCse                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num Downsize                0                  0                  0                  0                  0                  0                  0                  0  
##>  Num Speculate                0                  0                  0                  0                  0                  0                  0                  0  
##>     Runtime(s)                0                  0                  0                  0                  0                  0                  0                  0  
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>
##>
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Optimization Step DEBUG Table for config CDN_DP_region_2_4_c7
##>
##>                          Step                        Area   (  % Chg)         WNS (Change)          TNS (Change)                Power   (  % Chg)        Runtime (s)        Comment                   
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>EquationExtraction              START               58719470 (       )    23860.20 (        )          0 (        )                    0 (       )              
##> rewrite                        START              111566993 ( +90.00)    23836.30 (  -23.90)          0 (       0)                    0 (  +0.00)              (a,ar) Expr10_from --> Expr10_to
##>                                  END              229005933 (+105.26)    23836.30 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               58719470 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START               58719470 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START               58719470 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               58719470 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START               58719470 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 ( +20.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               70463364 ( +20.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>canonicalize_by_names           START               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               70463364 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>context_based_simplify          START               46975576 ( -33.33)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 ( -12.50)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>group_csa_final_adder_dp        START               41103629 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_flatten_critical_muxes_i  START               41103629 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>create_score                    START               41103629 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23860.20 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Committed config: CDN_DP_region_2_4_c7
Info    : Done implementing datapath configurations. [DPOPT-4]
        : Selected 'very_fast' configuration 7 for module 'CDN_DP_region_2_4_c7'.
          Optimizations applied to 'very_fast' configuration:
            rewriting(0), factoring(0), sharing(0), cmultcse(0), downsizing(0), speculation(0)
Info    : Implementing datapath configurations. [DPOPT-3]
        : Implementing datapath configurations for 'CDN_DP_region_2_3'
CSAGen Prep Share:0 Re-Write:0 Speculation: 0
    MaxCSA: weighted_instance_count is 6 
      Timing increment_unsigned_1270_1789...
        Done timing increment_unsigned_1270_1789.
      Timing increment_unsigned_1270_1794...
        Done timing increment_unsigned_1270_1794.
      Timing increment_unsigned_1270_1799...
        Done timing increment_unsigned_1270_1799.
      Timing increment_unsigned_1270_1804...
        Done timing increment_unsigned_1270_1804.
      Timing increment_unsigned_1270_1809...
        Done timing increment_unsigned_1270_1809.
      Timing increment_unsigned_1270_1814...
        Done timing increment_unsigned_1270_1814.
      Timing increment_unsigned_1270_1819...
        Done timing increment_unsigned_1270_1819.
CDN_DP_region_2_3 level = 0 loads = 0 drivers = 0
CDN_DP_region_2_3_c0 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 58719470 , DP = 1  sg = slow     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 skipped
CDN_DP_region_2_3_c1 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = fast     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_3_c2 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_slow
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_3_c3 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_3_c4 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_3_c5 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_3_c6 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_3_c7 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
Best config: CDN_DP_region_2_3_c7 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 41103629 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
  Smallest config area : 41103629.  Fastest config wns;  0
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Summary table of configs (Best config is CDN_DP_region_2_3_c7)
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>                     0                  1                  2                  3                  4                  5                  6                  7            
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>           Area         58719470           41103629           41103629           41103629           41103629           41103629           41103629           41103629  
##>            WNS        +23844.90          +23844.90          +23844.90          +23844.90          +23844.90          +23844.90          +23844.90          +23844.90  
##>            TNS                0                  0                  0                  0                  0                  0                  0                  0  
##>    Num Rewrite                0                  0                  0                  0                  0                  0                  0                  0  
##>     Num Factor                0                  0                  0                  0                  0                  0                  0                  0  
##>      Num Share                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num CmultCse                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num Downsize                0                  0                  0                  0                  0                  0                  0                  0  
##>  Num Speculate                0                  0                  0                  0                  0                  0                  0                  0  
##>     Runtime(s)                0                  0                  0                  0                  0                  0                  0                  0  
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>
##>
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Optimization Step DEBUG Table for config CDN_DP_region_2_3_c7
##>
##>                          Step                        Area   (  % Chg)         WNS (Change)          TNS (Change)                Power   (  % Chg)        Runtime (s)        Comment                   
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>EquationExtraction              START               58719470 (       )    23844.90 (        )          0 (        )                    0 (       )              
##> rewrite                        START              111566993 ( +90.00)    23803.50 (  -41.40)          0 (       0)                    0 (  +0.00)              (a,ar) Expr11_from --> Expr11_to
##>                                  END              229005933 (+105.26)    23803.50 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               58719470 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START               58719470 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START               58719470 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               58719470 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START               58719470 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 ( +20.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               70463364 ( +20.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>canonicalize_by_names           START               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               70463364 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>context_based_simplify          START               46975576 ( -33.33)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 ( -12.50)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>group_csa_final_adder_dp        START               41103629 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_flatten_critical_muxes_i  START               41103629 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>create_score                    START               41103629 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23844.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Committed config: CDN_DP_region_2_3_c7
Info    : Done implementing datapath configurations. [DPOPT-4]
        : Selected 'very_fast' configuration 7 for module 'CDN_DP_region_2_3_c7'.
          Optimizations applied to 'very_fast' configuration:
            rewriting(0), factoring(0), sharing(0), cmultcse(0), downsizing(0), speculation(0)
Info    : Implementing datapath configurations. [DPOPT-3]
        : Implementing datapath configurations for 'CDN_DP_region_0_0'
CSAGen Prep Share:0 Re-Write:0 Speculation: 0
    MaxCSA: weighted_instance_count is 4 
CDN_DP_region_0_0 level = 0 loads = 0 drivers = 0
CDN_DP_region_0_0_c0 in Memory43b: area: 46975576 , DP = 1  sg = slow     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 skipped
CDN_DP_region_0_0_c1 in Memory43b: area: 17615841 , DP = 1  sg = fast     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_0_0_c2 in Memory43b: area: 17615841 , DP = 1  sg = very_slow
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_0_0_c3 in Memory43b: area: 17615841 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_0_0_c4 in Memory43b: area: 17615841 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_0_0_c5 in Memory43b: area: 17615841 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_0_0_c6 in Memory43b: area: 17615841 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_0_0_c7 in Memory43b: area: 17615841 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
Best config: CDN_DP_region_0_0_c7 in Memory43b: area: 17615841 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
  Smallest config area : 17615841.  Fastest config wns;  0
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Summary table of configs (Best config is CDN_DP_region_0_0_c7)
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>                     0                  1                  2                  3                  4                  5                  6                  7            
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>           Area         46975576           17615841           17615841           17615841           17615841           17615841           17615841           17615841  
##>            WNS        +23729.70          +23729.70          +23729.70          +23729.70          +23729.70          +23729.70          +23729.70          +23729.70  
##>            TNS                0                  0                  0                  0                  0                  0                  0                  0  
##>    Num Rewrite                0                  0                  0                  0                  0                  0                  0                  0  
##>     Num Factor                0                  0                  0                  0                  0                  0                  0                  0  
##>      Num Share                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num CmultCse                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num Downsize                0                  0                  0                  0                  0                  0                  0                  0  
##>  Num Speculate                0                  0                  0                  0                  0                  0                  0                  0  
##>     Runtime(s)                0                  0                  0                  0                  0                  0                  0                  0  
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>
##>
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Optimization Step DEBUG Table for config CDN_DP_region_0_0_c7
##>
##>                          Step                        Area   (  % Chg)         WNS (Change)          TNS (Change)                Power   (  % Chg)        Runtime (s)        Comment                   
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>EquationExtraction              START               46975576 (       )    23729.70 (        )          0 (        )                    0 (       )              
##> rewrite                        START               76335311 ( +62.50)    23711.40 (  -18.30)          0 (       0)                    0 (  +0.00)              (a,ar) Expr12_from --> Expr12_to
##>                                  END              140926728 ( +84.62)    23711.40 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               46975576 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START               46975576 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START               46975576 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               46975576 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START               46975576 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 ( -12.50)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               41103629 ( -12.50)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>canonicalize_by_names           START               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               41103629 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>context_based_simplify          START               17615841 ( -57.14)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               17615841 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>group_csa_final_adder_dp        START               17615841 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               17615841 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_flatten_critical_muxes_i  START               17615841 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               17615841 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>create_score                    START               17615841 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               17615841 (  +0.00)    23729.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Committed config: CDN_DP_region_0_0_c7
Info    : Done implementing datapath configurations. [DPOPT-4]
        : Selected 'very_fast' configuration 7 for module 'CDN_DP_region_0_0_c7'.
          Optimizations applied to 'very_fast' configuration:
            rewriting(0), factoring(0), sharing(0), cmultcse(0), downsizing(0), speculation(0)
Info    : Implementing datapath configurations. [DPOPT-3]
        : Implementing datapath configurations for 'CDN_DP_region_2_2'
CSAGen Prep Share:0 Re-Write:0 Speculation: 0
    MaxCSA: weighted_instance_count is 6 
CDN_DP_region_2_2 level = 0 loads = 0 drivers = 0
CDN_DP_region_2_2_c0 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 11743894 , DP = 1  sg = slow     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 skipped
CDN_DP_region_2_2_c1 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 11743894 , DP = 1  sg = fast     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_2_c2 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 11743894 , DP = 1  sg = very_slow
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_2_c3 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 11743894 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_2_c4 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 11743894 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_2_c5 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 11743894 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_2_c6 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 11743894 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_2_2_c7 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 11743894 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
Best config: CDN_DP_region_2_2_c7 in fifo_miso_DEPTH8_ADDR_WIDTH3: area: 11743894 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
  Smallest config area : 11743894.  Fastest config wns;  0
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Summary table of configs (Best config is CDN_DP_region_2_2_c7)
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>                     0                  1                  2                  3                  4                  5                  6                  7            
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>           Area         11743894           11743894           11743894           11743894           11743894           11743894           11743894           11743894  
##>            WNS        +23665.90          +23665.90          +23665.90          +23665.90          +23665.90          +23665.90          +23665.90          +23665.90  
##>            TNS                0                  0                  0                  0                  0                  0                  0                  0  
##>    Num Rewrite                0                  0                  0                  0                  0                  0                  0                  0  
##>     Num Factor                0                  0                  0                  0                  0                  0                  0                  0  
##>      Num Share                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num CmultCse                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num Downsize                0                  0                  0                  0                  0                  0                  0                  0  
##>  Num Speculate                0                  0                  0                  0                  0                  0                  0                  0  
##>     Runtime(s)                0                  0                  0                  0                  0                  0                  0                  0  
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>
##>
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Optimization Step DEBUG Table for config CDN_DP_region_2_2_c7
##>
##>                          Step                        Area   (  % Chg)         WNS (Change)          TNS (Change)                Power   (  % Chg)        Runtime (s)        Comment                   
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>EquationExtraction              START               11743894 (       )    23665.90 (        )          0 (        )                    0 (       )              
##> rewrite                        START               41103629 (+250.00)    23656.20 (   -9.70)          0 (       0)                    0 (  +0.00)              (a,ar) Expr13_from --> Expr13_to
##>                                  END              193774251 (+371.43)    23645.00 (  -11.20)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>canonicalize_by_names           START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>context_based_simplify          START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>group_csa_final_adder_dp        START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_flatten_critical_muxes_i  START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>create_score                    START               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               11743894 (  +0.00)    23665.90 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Committed config: CDN_DP_region_2_2_c7
Info    : Done implementing datapath configurations. [DPOPT-4]
        : Selected 'very_fast' configuration 7 for module 'CDN_DP_region_2_2_c7'.
          Optimizations applied to 'very_fast' configuration:
            rewriting(0), factoring(0), sharing(0), cmultcse(0), downsizing(0), speculation(0)
Info    : Implementing datapath configurations. [DPOPT-3]
        : Implementing datapath configurations for 'CDN_DP_region_8_0'
CSAGen Prep Share:0 Re-Write:0 Speculation: 0
    MaxCSA: weighted_instance_count is 4 
CDN_DP_region_8_0 level = 0 loads = 0 drivers = 0
CDN_DP_region_8_0_c0 in two_bit_counter: area: 23487788 , DP = 1  sg = slow     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 skipped
CDN_DP_region_8_0_c1 in two_bit_counter: area: 17615841 , DP = 1  sg = fast     
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_8_0_c2 in two_bit_counter: area: 17615841 , DP = 1  sg = very_slow
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_8_0_c3 in two_bit_counter: area: 17615841 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_8_0_c4 in two_bit_counter: area: 17615841 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_8_0_c5 in two_bit_counter: area: 17615841 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_8_0_c6 in two_bit_counter: area: 17615841 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
CDN_DP_region_8_0_c7 in two_bit_counter: area: 17615841 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
 is current best
Best config: CDN_DP_region_8_0_c7 in two_bit_counter: area: 17615841 , DP = 1  sg = very_fast
    wns: 0  norm_wns:  -1.0000 
    tns:  0
Combined costing for score 0.00 is 0.00
  Smallest config area : 17615841.  Fastest config wns;  0
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Summary table of configs (Best config is CDN_DP_region_8_0_c7)
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>                     0                  1                  2                  3                  4                  5                  6                  7            
##>+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>           Area         23487788           17615841           17615841           17615841           17615841           17615841           17615841           17615841  
##>            WNS    +214748364.70      +214748364.70      +214748364.70      +214748364.70      +214748364.70      +214748364.70      +214748364.70      +214748364.70  
##>            TNS                0                  0                  0                  0                  0                  0                  0                  0  
##>    Num Rewrite                0                  0                  0                  0                  0                  0                  0                  0  
##>     Num Factor                0                  0                  0                  0                  0                  0                  0                  0  
##>      Num Share                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num CmultCse                0                  0                  0                  0                  0                  0                  0                  0  
##>   Num Downsize                0                  0                  0                  0                  0                  0                  0                  0  
##>  Num Speculate                0                  0                  0                  0                  0                  0                  0                  0  
##>     Runtime(s)                0                  0                  0                  0                  0                  0                  0                  0  
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>
##>
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>Optimization Step DEBUG Table for config CDN_DP_region_8_0_c7
##>
##>                          Step                        Area   (  % Chg)         WNS (Change)          TNS (Change)                Power   (  % Chg)        Runtime (s)        Comment                   
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
##>EquationExtraction              START               23487788 (       )    214748364.70 (        )          0 (        )                    0 (       )              
##> rewrite                        START               52847523 (+125.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              (a,ar) Expr14_from --> Expr14_to
##>                                  END              117438940 (+122.22)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               23487788 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START               23487788 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START               23487788 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               23487788 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START               23487788 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 ( +75.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               41103629 ( +75.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>canonicalize_by_names           START               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_csa_one_  START               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_csa_factoring_one_gde  START               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_share_one_def             START               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>datapath_rewrite_post_share     START               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_combine_const_mult_with_com  START               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dp_operator_level_decompositio  START               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>selective_flatten_dp_config     START               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>createMaxCarrySave              START               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##> datapath_rewrite_one_def       START               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>  fast_cse_elim                 START               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>  fast_cse_elim                 START               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##> csa_opto                       START               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>                                  END               41103629 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>context_based_simplify          START               17615841 ( -57.14)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               17615841 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>group_csa_final_adder_dp        START               17615841 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               17615841 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>dpopt_flatten_critical_muxes_i  START               17615841 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               17615841 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>create_score                    START               17615841 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)              
##>                                  END               17615841 (  +0.00)    214748364.70 (   +0.00)          0 (       0)                    0 (  +0.00)           0  
##>+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Committed config: CDN_DP_region_8_0_c7
Info    : Done implementing datapath configurations. [DPOPT-4]
        : Selected 'very_fast' configuration 7 for module 'CDN_DP_region_8_0_c7'.
          Optimizations applied to 'very_fast' configuration:
            rewriting(0), factoring(0), sharing(0), cmultcse(0), downsizing(0), speculation(0)
Info:  Ungrouped 0 dp-cluster instances.  0 cluster instances were left intact, to aid verification.
              Preparing netlist for verification ...
              Done preparing netlist for verification.
Info    : Done optimizing datapath logic. [DPOPT-2]
        : Done optimizing datapath logic in 'topPLLDigital'.
      Removing temporary intermediate hierarchies under topPLLDigital
Number of big hc bmuxes after = 0
Starting bit-level redundancy removal [v1.0] (stage: post_rtlopt, startdef: topPLLDigital, recur: true)
Completed bit-level redundancy removal (accepts: 0, rejects: 0, runtime: 0.080s)
Starting logic reduction [v1.0] (stage: post_rtlopt, startdef: topPLLDigital, recur: true)
Completed logic reduction (accepts: 0, rejects: 0, runtime: 0.000s)
Starting mux data reorder optimization [v1.0] (stage: post_rtlopt, startdef: topPLLDigital, recur: true)
Completed mux data reorder optimization (accepts: 0, rejects: 0, runtime: 0.000s)
Starting timing based select reordering [v1.0] (stage: post_rtlopt, startdef: topPLLDigital, recur: true)
Completed timing based select reordering (accepts: 0, rejects: 0, runtime: 0.103s)

Stage: post_rtlopt
----------------------------------------------------------------
| Transform                  | Accepts | Rejects | Runtime (s) | 
----------------------------------------------------------------
| hlo_redundancy_removal_bit |       0 |       0 |        0.08 | 
| hlo_logic_reduction        |       0 |       0 |        0.00 | 
| hlo_mux_reorder            |       0 |       0 |        0.00 | 
| hlo_timing_reorder         |       0 |       0 |        0.10 | 
----------------------------------------------------------------
Info    : Deleting sequential instances not driving any primary outputs. [GLO-32]
        : Deleting 1 sequential instance. 
Following instance is deleted as they do not drive any primary output:
'mash111_inst/Unit_Delay_out1_reg[44]'.
              Optimizing muxes in design 'topPLLDigital'.
              Optimizing muxes in design 'register_bank_pll'.
              Optimizing muxes in design 'fifo_miso_DEPTH8_ADDR_WIDTH3'.
              Optimizing muxes in design 'fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3'.
              Optimizing muxes in design 'spi_slave_pll'.
              Post blast muxes in design 'topPLLDigital'.
Running post blast mux optimization. Please follow up with Cadence support if runtime issues are seen with this optimization.
              Post blast muxes in design 'spi_slave_pll'.
Running post blast mux optimization. Please follow up with Cadence support if runtime issues are seen with this optimization.
              Post blast muxes in design 'fifo_pll_WIDTH16_DEPTH8_ADDR_WIDTH3'.
Running post blast mux optimization. Please follow up with Cadence support if runtime issues are seen with this optimization.
              Post blast muxes in design 'register_bank_pll'.
Running post blast mux optimization. Please follow up with Cadence support if runtime issues are seen with this optimization.
              Post blast muxes in design 'fifo_miso_DEPTH8_ADDR_WIDTH3'.
Running post blast mux optimization. Please follow up with Cadence support if runtime issues are seen with this optimization.
Starting mux speculation [v1.0] (stage: post_muxopt, startdef: topPLLDigital, recur: true)
Starting speculation optimization
Completed speculation optimization (accepts:0)
Completed mux speculation (accepts: 0, rejects: 0, runtime: 0.108s)
Starting timing based select reordering [v1.0] (stage: post_muxopt, startdef: topPLLDigital, recur: true)
Completed timing based select reordering (accepts: 0, rejects: 0, runtime: 0.090s)

Stage: post_muxopt
--------------------------------------------------------
| Transform          | Accepts | Rejects | Runtime (s) | 
--------------------------------------------------------
| hlo_speculation    |       0 |       0 |        0.11 | 
| hlo_timing_reorder |       0 |       0 |        0.09 | 
--------------------------------------------------------
==================================
Stage : to_generic 
==================================
  =================
   Message Summary
  =================
---------------------------------------------------------------------------------------------------------------------------------
|    Id     |  Sev  |Count|                                            Message Text                                             |
---------------------------------------------------------------------------------------------------------------------------------
|1801-99    |Warning|    2|Potential problem while applying power intent of 1801 file.                                          |
|           |       |     |Check the power intent. If the scenario is expected, this message can be ignored.                    |
|CDFG-250   |Info   |    5|Processing multi-dimensional arrays.                                                                 |
|CDFG-372   |Info   |   84|Bitwidth mismatch in assignment.                                                                     |
|           |       |     |Review and make sure the mismatch is intentional. Genus can possibly issue bitwidth mismatch warning |
|           |       |     | for explicit assignments present in RTL as-well-as for implicit assignments inferred by the tool.   |
|           |       |     | For example, in case of enum declaration without value, the tool will implicitly assign value to the|
|           |       |     | enum variables. It also issues the warning for any bitwidth mismatch that appears in this implicit  |
|           |       |     | assignment.                                                                                         |
|CDFG-472   |Warning|    3|Unreachable statements for case item.                                                                |
|CDFG-508   |Warning|    2|Removing unused register.                                                                            |
|           |       |     |Genus removes the flip-flop or latch inferred for an unused signal or variable. To preserve the      |
|           |       |     | flip-flop or latch, set the hdl_preserve_unused_registers attribute to true or use a pragma in the  |
|           |       |     | RTL.                                                                                                |
|CDFG-567   |Info   |    8|Instantiating Subdesign.                                                                             |
|CDFG-738   |Info   |    7|Common subexpression eliminated.                                                                     |
|CDFG-739   |Info   |    7|Common subexpression kept.                                                                           |
|CDFG2G-616 |Info   |    1|Latch inferred. Check and revisit your RTL if this is not the intended behavior.                     |
|           |       |     |Use the attributes 'set_attribute hdl_error_on_latch true'(LUI)                                      |
|           |       |     | or 'set_db hdl_error_on_latch true' (CUI)                                                           |
|           |       |     | to issue an error when a latch is inferred. Use the attributes 'set_attributes                      |
|           |       |     | hdl_latch_keep_feedback true'(LUI) or 'set_db hdl_latch_keep_feedback true'(CUI)                    |
|           |       |     | to infer combinational logic rather than a latch in case a variable is explicitly assigned to       |
|           |       |     | itself.                                                                                             |
|CDFG2G-622 |Warning|    1|Signal or variable has multiple drivers.                                                             |
|           |       |     |This may cause simulation mismatches between the original and synthesized designs.                   |
|CPI-339    |Warning|    1|No power states defined in power intent file.                                                        |
|           |       |     |At least one power state is expected to be present for level shifter insertion.                      |
|CPI-502    |Info   |    1|No isolation rules defined.                                                                          |
|CPI-517    |Info   |    1|Completed isolation cell insertion.                                                                  |
|CPI-518    |Info   |    1|Completed level shifter insertion.                                                                   |
|CWD-19     |Info   |  346|An implementation was inferred.                                                                      |
|CWD-36     |Info   |   20|Sorted the set of valid implementations for synthetic operator.                                      |
|DPOPT-1    |Info   |    1|Optimizing datapath logic.                                                                           |
|DPOPT-2    |Info   |    1|Done optimizing datapath logic.                                                                      |
|DPOPT-3    |Info   |   16|Implementing datapath configurations.                                                                |
|DPOPT-4    |Info   |   16|Done implementing datapath configurations.                                                           |
|DPOPT-6    |Info   |    1|Pre-processed datapath logic.                                                                        |
|DPOPT-10   |Info   |    2|Optimized a mux chain.                                                                               |
|ELAB-1     |Info   |    1|Elaborating Design.                                                                                  |
|ELAB-2     |Info   |    8|Elaborating Subdesign.                                                                               |
|ELAB-3     |Info   |    1|Done Elaborating Design.                                                                             |
|ELABUTL-132|Info   |    5|Unused instance port.                                                                                |
|           |       |     |Please check the reported scenario of unconnected instance port to ensure that it matches the design |
|           |       |     | intent.                                                                                             |
|GB-6       |Info   |    4|A datapath component has been ungrouped.                                                             |
|GLO-12     |Info   |   69|Replacing a flip-flop with a logic constant 0.                                                       |
|           |       |     |To prevent this optimization, set the 'optimize_constant_0_flops' root attribute to 'false' or       |
|           |       |     | 'optimize_constant_0_seq' instance attribute to 'false'. You can also see the complete list of      |
|           |       |     | deleted sequential with command 'report sequential -deleted' (on Reason 'constant0').               |
|GLO-14     |Info   |   32|Replacing a latch with a logic constant 0.                                                           |
|           |       |     |This optimization was enabled by the root attribute 'optimize_constant_latches'.                     |
|GLO-32     |Info   |    4|Deleting sequential instances not driving any primary outputs.                                       |
|           |       |     |Optimizations such as constant propagation or redundancy removal could change the connections so an  |
|           |       |     | instance does not drive any primary outputs anymore. To see the list of deleted sequential, set the |
|           |       |     | 'information_level' attribute to 2 or above. If the message is truncated set the message attribute  |
|           |       |     | 'truncate' to false to see the complete list.                                                       |
|GLO-34     |Info   |    2|Deleting instances not driving any primary outputs.                                                  |
|           |       |     |Optimizations such as constant propagation or redundancy removal could change the connections so a   |
|           |       |     | hierarchical instance does not drive any primary outputs anymore. To see the list of deleted        |
|           |       |     | hierarchical instances, set the 'information_level' attribute to 2 or above. If the message is      |
|           |       |     | truncated set the message attribute 'truncate' to false to see the complete list. To prevent this   |
|           |       |     | optimization, set the 'delete_unloaded_insts' root/subdesign attribute to 'false' or 'preserve'     |
|           |       |     | instance attribute to 'true'.                                                                       |
|GLO-45     |Info   |   69|Replacing the synchronous part of an always feeding back flip-flop with a logic constant.            |
|           |       |     |To prevent this optimization, set 'optimize_constant_feedback_seqs' root attribute to 'false'. The   |
|           |       |     | instance attribute 'optimize_constant_feedback_seq' controls this optimization.                     |
|HLO_RR-1   |Info   |    1|Setting up the version of high level Redundancy Removal Optimizations.                               |
|LBR-101    |Warning|    1|Unusable clock gating integrated cell found at the time of loading libraries. This warning happens   |
|           |       |     | because a particular library cell is defined as 'clock_gating_integrated_cell', but 'dont_use'      |
|           |       |     | attribute is defined as true in the liberty library. To make Genus use this cell for clock gating   |
|           |       |     | insertion, 'dont_use' attribute should be set to false.                                             |
|           |       |     |To make the cell usable, change the value of 'dont_use' attribute to false.                          |
|LBR-162    |Info   |   26|Both 'pos_unate' and 'neg_unate' timing_sense arcs have been processed.                              |
|           |       |     |Setting the 'timing_sense' to non_unate.                                                             |
|LBR-412    |Info   |    1|Created nominal operating condition.                                                                 |
|           |       |     |The nominal operating condition is represented, either by the nominal PVT values specified in the    |
|           |       |     | library source (via nom_process,nom_voltage and nom_temperature respectively)                       |
|           |       |     | , or by the default PVT values (1.0,1.0,1.0).                                                       |
|LBR-415    |Info   |    1|Unusable library cells found at the time of loading a library.                                       |
|           |       |     |For  more  information, refer to 'Cells Identified as Unusable' in the 'User Guide'. To know the     |
|           |       |     | reason why a cell is considered as unusable, check 'unusable_reason' libcell attribute.             |
|PHYS-752   |Info   |    1|Partition Based Synthesis execution skipped.                                                         |
|RTLOPT-30  |Info   |    1|Accepted resource sharing opportunity.                                                               |
|RTLOPT-40  |Info   |   14|Transformed datapath macro.                                                                          |
|RTLOPT-55  |Warning|   10|Inferred datapath logic has changed and cannot be considered for datapath optimizations.             |
|           |       |     |For best results, ensure this command is issued after syn_map, when all datapath optimizations have  |
|           |       |     | finished.                                                                                           |
|SDC-202    |Error  |    2|Could not interpret SDC command.                                                                     |
|           |       |     |The 'read_sdc' command encountered a problem while trying to evaluate an SDC command. This SDC       |
|           |       |     | command will be added to the Tcl variable $::dc::sdc_failed_commands.                               |
|SDC-209    |Warning|    1|One or more commands failed when these constraints were applied.                                     |
|           |       |     |You can examine the failed commands or save them to a file by querying the Tcl variable              |
|           |       |     | $::dc::sdc_failed_commands.                                                                         |
|SYNTH-1    |Info   |    1|Synthesizing.                                                                                        |
|TIM-1000   |Info   |    1|Multimode clock gating check is disabled.                                                            |
|TUI-33     |Error  |    1|A flagged command option was incorrectly repeated.                                                   |
|           |       |     |Check the command usage and correct the input to the command.                                        |
|TUI-61     |Error  |    1|A required object parameter could not be found.                                                      |
|           |       |     |Check to make sure that the object exists and is of the correct type.  The 'what_is' command can be  |
|           |       |     | used to determine the type of an object.                                                            |
---------------------------------------------------------------------------------------------------------------------------------
Mapper: Libraries have:
	domain _default_: 88 combo usable cells and 18 sequential usable cells
      Mapping 'topPLLDigital'...
        Preparing the circuit
          Pruning unused logic
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'ADD_TC_OP' of datapath component 'add_signed_1288'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'inc_add_36_37' of datapath component 'increment_unsigned_1270_1713'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'inc_add_42_35' of datapath component 'increment_unsigned_1270_1354'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'dec_sub_55_32' of datapath component 'decrement_unsigned_1414_1569'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'inc_add_38_37' of datapath component 'increment_unsigned_1270_1751'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'inc_add_39_28' of datapath component 'increment_unsigned_1413_1570'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'inc_add_54_39' of datapath component 'increment_unsigned_1270_1789'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'ADD_TC_OP' of datapath component 'add_signed_667'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'add_235_32' of datapath component 'add_signed_rtlopto_model_5'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'csa_tree_sub_292_43_groupi' of datapath component 'csa_tree_sub_292_43_group_2'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'inc_add_245_54' of datapath component 'increment_signed_620'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'sub_266_43' of datapath component 'sub_signed_153'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'LT_UNS_OP' of datapath component 'lt_unsigned_1636_1638'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'dec_sub_71_50' of datapath component 'decrement_unsigned_1673_1675'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'inc_add_36_50' of datapath component 'increment_unsigned_1581_1585'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'lt_34_30' of datapath component 'lt_unsigned_184_rtlopto_model_1655'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'inc_add_10_33' of datapath component 'increment_unsigned_1394'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'inc_add_49_40' of datapath component 'increment_unsigned_1394'.
Info    : A datapath component has been ungrouped. [GB-6]
        : The instance 'inc_add_32_37' of datapath component 'increment_unsigned_1394'.
          Analyzing hierarchical boundaries
          Aggressive hierarchical optimization: disabled
          Propagating constants
        Done preparing the circuit
          Structuring (delay-based) topPLLDigital...
          Done structuring (delay-based) topPLLDigital
Multi-threaded Virtual Mapping    (8 threads per ST process, 8 of 112 CPUs usable)
          Structuring (delay-based) logic partition in topPLLDigital...
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) logic partition in topPLLDigital
        Mapping logic partition in topPLLDigital...
          Structuring (delay-based) logic partition in topPLLDigital...
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) logic partition in topPLLDigital
        Mapping logic partition in topPLLDigital...
          Structuring (delay-based) logic partition in Memory43b...
            Starting partial collapsing (xors only) cb_oseq_329
            Finished partial collapsing.
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) logic partition in Memory43b
        Mapping logic partition in Memory43b...
          Structuring (delay-based) mux_ctl_0x_324...
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) mux_ctl_0x_324
        Mapping component mux_ctl_0x_324...
          Structuring (delay-based) cb_oseq_327...
            Starting partial collapsing (xors only) cb_oseq_327
            Finished partial collapsing.
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) cb_oseq_327
        Mapping component cb_oseq_327...
          Structuring (delay-based) add_signed_162...
            Starting partial collapsing (xors only) add_signed_162
            Finished partial collapsing.
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) add_signed_162
        Mapping component add_signed_162...
          Structuring (delay-based) spi_slave_pll...
            Starting partial collapsing (xors only) spi_slave_pll
            Finished partial collapsing.
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) spi_slave_pll
        Mapping component spi_slave_pll...
          Structuring (delay-based) cb_oseq...
            Starting partial collapsing (xors only) cb_oseq
            Finished partial collapsing.
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) cb_oseq
        Mapping component cb_oseq...
          Structuring (delay-based) logic partition in topPLLDigital...
          Done structuring (delay-based) logic partition in topPLLDigital
        Mapping logic partition in topPLLDigital...
          Structuring (delay-based) two_bit_counter...
            Starting partial collapsing (xors only) two_bit_counter
            Finished partial collapsing.
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) two_bit_counter
        Mapping component two_bit_counter...
          Structuring (delay-based) logic partition in Memory43b...
          Done structuring (delay-based) logic partition in Memory43b
        Mapping logic partition in Memory43b...
          Structuring (delay-based) clkDiv_DIV2...
          Done structuring (delay-based) clkDiv_DIV2
        Mapping component clkDiv_DIV2...
          Structuring (delay-based) cb_seq_326...
          Done structuring (delay-based) cb_seq_326
        Mapping component cb_seq_326...
          Structuring (delay-based) cb_seq...
          Done structuring (delay-based) cb_seq
        Mapping component cb_seq...
          Structuring (delay-based) cb_oseq_331...
            Starting partial collapsing (xors only) cb_oseq_331
            Finished partial collapsing.
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) cb_oseq_331
        Mapping component cb_oseq_331...
          Structuring (delay-based) logic partition in mash111...
          Done structuring (delay-based) logic partition in mash111
        Mapping logic partition in mash111...
==================================
Stage : first_condense 
==================================
  =================
   Message Summary
  =================
----------------------------------------------------------
| Id |Sev |Count|              Message Text              |
----------------------------------------------------------
|GB-6|Info|   19|A datapath component has been ungrouped.|
----------------------------------------------------------
 
Global mapping target info
==========================
Cost Group 'clk' target slack:   182 ps
Target path end-point (Pin: fifo_inst/data_out_reg[11]/d)

          Pin                      Type          Fanout Load Arrival   
                                                        (fF)   (ps)    
-----------------------------------------------------------------------
(clock sclk)             <<<  launch                           93750 R 
spi_slave_inst
  data_valid_reg/clk                                                   
  data_valid_reg/q       (u)  unmapped_d_flop        18 99.0           
spi_slave_inst/data_valid 
fifo_inst/read_enable 
  cb_oseqi/read_enable 
    g3794/in_1                                                         
    g3794/z              (u)  unmapped_nand2         16 22.0           
    g3784/in_0                                                         
    g3784/z              (u)  unmapped_complex2      16 22.0           
    g3775/in_1                                                         
    g3775/z              (u)  unmapped_or2            4 22.0           
    g3733/in_1                                                         
    g3733/z              (u)  unmapped_or2           14 77.0           
    g3660/in_0                                                         
    g3660/z              (u)  unmapped_complex2       1  5.5           
    g3580/in_1                                                         
    g3580/z              (u)  unmapped_nand2          1  5.5           
    g3536/in_1                                                         
    g3536/z              (u)  unmapped_complex2       1  5.5           
    g3496/in_1                                                         
    g3496/z              (u)  unmapped_or2            1  5.5           
    g3481/in_1                                                         
    g3481/z              (u)  unmapped_or2            1  5.5           
  cb_oseqi/cb_seqi_g35_z 
  cb_seqi/g35_z 
    data_out_reg[11]/d   <<<  unmapped_d_flop                          
    data_out_reg[11]/clk      setup                                    
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(clock clk)                   capture                         100000 R 
                              latency                                  
                              uncertainty                              
-----------------------------------------------------------------------
Cost Group   : 'clk' (path_group 'clk')
Start-point  : spi_slave_inst/data_valid_reg/clk
End-point    : fifo_inst/cb_seqi/data_out_reg[11]/d

(u) : Net has unmapped pin(s).

The global mapper estimates a slack for this path of 4366ps.
 
Cost Group 'clk_2' target slack:  1453 ps
Target path end-point (Port: topPLLDigital/dsm_out[3])

             Pin                         Type          Fanout  Load  Arrival   
                                                               (fF)    (ps)    
-------------------------------------------------------------------------------
(clock clk_2)                  <<<  launch                                 0 R 
mash111_inst
  cb_seqi
    Unit_Delay_out1_reg[1]/clk                                                 
    Unit_Delay_out1_reg[1]/q   (u)  unmapped_d_flop         3   16.5           
  cb_seqi/add_134_34_B[0] 
  add_134_34/B[0] 
    g5/in_1                                                                    
    g5/z                       (u)  unmapped_nand2          3   16.5           
    g2116/in_1                                                                 
    g2116/z                    (u)  unmapped_complex2       1    5.5           
    g2092/in_0                                                                 
    g2092/z                    (u)  unmapped_nand2          3   16.5           
    g2091/in_1                                                                 
    g2091/z                    (u)  unmapped_nand2          1    5.5           
    g2087/in_0                                                                 
    g2087/z                    (u)  unmapped_nand2          3   16.5           
    g2086/in_1                                                                 
    g2086/z                    (u)  unmapped_nand2          1    5.5           
    g2082/in_0                                                                 
    g2082/z                    (u)  unmapped_nand2          3   16.5           
    g2078/in_1                                                                 
    g2078/z                    (u)  unmapped_nand2          1    5.5           
    g2077/in_0                                                                 
    g2077/z                    (u)  unmapped_nand2          3   16.5           
    g2076/in_1                                                                 
    g2076/z                    (u)  unmapped_nand2          1    5.5           
    g2072/in_0                                                                 
    g2072/z                    (u)  unmapped_nand2          3   16.5           
    g2068/in_1                                                                 
    g2068/z                    (u)  unmapped_nand2          1    5.5           
    g2067/in_0                                                                 
    g2067/z                    (u)  unmapped_nand2          3   16.5           
    g2063/in_1                                                                 
    g2063/z                    (u)  unmapped_nand2          1    5.5           
    g2062/in_0                                                                 
    g2062/z                    (u)  unmapped_nand2          3   16.5           
    g2061/in_1                                                                 
    g2061/z                    (u)  unmapped_nand2          1    5.5           
    g2057/in_1                                                                 
    g2057/z                    (u)  unmapped_nand2          3   16.5           
    g2056/in_1                                                                 
    g2056/z                    (u)  unmapped_nand2          1    5.5           
    g2052/in_0                                                                 
    g2052/z                    (u)  unmapped_nand2          3   16.5           
    g2048/in_1                                                                 
    g2048/z                    (u)  unmapped_nand2          1    5.5           
    g2047/in_0                                                                 
    g2047/z                    (u)  unmapped_nand2          3   16.5           
    g2043/in_1                                                                 
    g2043/z                    (u)  unmapped_nand2          1    5.5           
    g2042/in_0                                                                 
    g2042/z                    (u)  unmapped_nand2          3   16.5           
    g2038/in_1                                                                 
    g2038/z                    (u)  unmapped_nand2          1    5.5           
    g2037/in_1                                                                 
    g2037/z                    (u)  unmapped_nand2          3   16.5           
    g2033/in_1                                                                 
    g2033/z                    (u)  unmapped_nand2          1    5.5           
    g2032/in_0                                                                 
    g2032/z                    (u)  unmapped_nand2          3   16.5           
    g2031/in_1                                                                 
    g2031/z                    (u)  unmapped_nand2          1    5.5           
    g2027/in_0                                                                 
    g2027/z                    (u)  unmapped_nand2          3   16.5           
    g2023/in_1                                                                 
    g2023/z                    (u)  unmapped_nand2          1    5.5           
    g2022/in_0                                                                 
    g2022/z                    (u)  unmapped_nand2          4   22.0           
    g2020/in_0                                                                 
    g2020/z                    (u)  unmapped_complex2       1    5.5           
    g2015/in_0                                                                 
    g2015/z                    (u)  unmapped_complex2       3   16.5           
    g2014/in_1                                                                 
    g2014/z                    (u)  unmapped_nand2          1    5.5           
    g2007/in_1                                                                 
    g2007/z                    (u)  unmapped_nand2          3   16.5           
    g2003/in_0                                                                 
    g2003/z                    (u)  unmapped_nand2          1    5.5           
    g2002/in_0                                                                 
    g2002/z                    (u)  unmapped_nand2          3   16.5           
    g1998/in_1                                                                 
    g1998/z                    (u)  unmapped_nand2          1    5.5           
    g1997/in_1                                                                 
    g1997/z                    (u)  unmapped_nand2          3   16.5           
    g1993/in_1                                                                 
    g1993/z                    (u)  unmapped_nand2          1    5.5           
    g1992/in_0                                                                 
    g1992/z                    (u)  unmapped_nand2          3   16.5           
    g1988/in_1                                                                 
    g1988/z                    (u)  unmapped_nand2          1    5.5           
    g1987/in_0                                                                 
    g1987/z                    (u)  unmapped_nand2          3   16.5           
    g1983/in_1                                                                 
    g1983/z                    (u)  unmapped_nand2          1    5.5           
    g1982/in_0                                                                 
    g1982/z                    (u)  unmapped_nand2          4   22.0           
    g1978/in_0                                                                 
    g1978/z                    (u)  unmapped_complex2       1    5.5           
    g1976/in_0                                                                 
    g1976/z                    (u)  unmapped_complex2       3   16.5           
    g1971/in_1                                                                 
    g1971/z                    (u)  unmapped_nand2          1    5.5           
    g1967/in_1                                                                 
    g1967/z                    (u)  unmapped_nand2          3   16.5           
    g1963/in_0                                                                 
    g1963/z                    (u)  unmapped_nand2          1    5.5           
    g1962/in_0                                                                 
    g1962/z                    (u)  unmapped_nand2          3   16.5           
    g1958/in_1                                                                 
    g1958/z                    (u)  unmapped_nand2          1    5.5           
    g1957/in_1                                                                 
    g1957/z                    (u)  unmapped_nand2          3   16.5           
    g1953/in_1                                                                 
    g1953/z                    (u)  unmapped_nand2          1    5.5           
    g1952/in_1                                                                 
    g1952/z                    (u)  unmapped_nand2          3   16.5           
    g1951/in_1                                                                 
    g1951/z                    (u)  unmapped_nand2          1    5.5           
    g1947/in_1                                                                 
    g1947/z                    (u)  unmapped_nand2          3   16.5           
    g1946/in_0                                                                 
    g1946/z                    (u)  unmapped_nand2          1    5.5           
    g1942/in_1                                                                 
    g1942/z                    (u)  unmapped_nand2          3   16.5           
    g1938/in_1                                                                 
    g1938/z                    (u)  unmapped_nand2          1    5.5           
    g1937/in_1                                                                 
    g1937/z                    (u)  unmapped_nand2          3   16.5           
    g1934/in_0                                                                 
    g1934/z                    (u)  unmapped_or2            1    5.5           
    g1935/in_1                                                                 
    g1935/z                    (u)  unmapped_nand2          3   16.5           
  add_134_34/Z[33] 
  cb_oseqi/add_134_34_Z[2] 
    g1275/in_0                                                                 
    g1275/z                    (u)  unmapped_or2            2   11.0           
    g1586/in_1                                                                 
    g1586/z                    (u)  unmapped_nand2          2   11.0           
    g1550/in_1                                                                 
    g1550/z                    (u)  unmapped_or2            1    5.5           
    g1551/in_1                                                                 
    g1551/z                    (u)  unmapped_nand2          3   16.5           
    g1269/in_0                                                                 
    g1269/z                    (u)  unmapped_or2            2   11.0           
    g1540/in_0                                                                 
    g1540/z                    (u)  unmapped_nand2          1    5.5           
    g1532/in_0                                                                 
    g1532/z                    (u)  unmapped_nand2          3   16.5           
    g1525/in_1                                                                 
    g1525/z                    (u)  unmapped_nand2          1    5.5           
    g1520/in_1                                                                 
    g1520/z                    (u)  unmapped_nand2          3   16.5           
    g1513/in_1                                                                 
    g1513/z                    (u)  unmapped_nand2          1    5.5           
    g1511/in_1                                                                 
    g1511/z                    (u)  unmapped_nand2          3   16.5           
    g1502/in_1                                                                 
    g1502/z                    (u)  unmapped_nand2          1    5.5           
    g1500/in_1                                                                 
    g1500/z                    (u)  unmapped_nand2          3   16.5           
    g1489/in_1                                                                 
    g1489/z                    (u)  unmapped_nand2          1    5.5           
    g1483/in_1                                                                 
    g1483/z                    (u)  unmapped_nand2          3   16.5           
    g1477/in_1                                                                 
    g1477/z                    (u)  unmapped_nand2          1    5.5           
    g1472/in_1                                                                 
    g1472/z                    (u)  unmapped_nand2          3   16.5           
    g1469/in_1                                                                 
    g1469/z                    (u)  unmapped_nand2          1    5.5           
    g1459/in_1                                                                 
    g1459/z                    (u)  unmapped_nand2          3   16.5           
    g1458/in_1                                                                 
    g1458/z                    (u)  unmapped_nand2          1    5.5           
    g1453/in_1                                                                 
    g1453/z                    (u)  unmapped_nand2          4   22.0           
    g1451/in_0                                                                 
    g1451/z                    (u)  unmapped_complex2       1    5.5           
    g1452/in_1                                                                 
    g1452/z                    (u)  unmapped_nand2          3   16.5           
    g756/in_0                                                                  
    g756/z                     (u)  unmapped_complex2       2   11.0           
    g743/in_1                                                                  
    g743/z                     (u)  unmapped_complex2       5   27.5           
    g1446/in_0                                                                 
    g1446/z                    (u)  unmapped_nand2          4   22.0           
    g1432/in_1                                                                 
    g1432/z                    (u)  unmapped_or2            1    5.5           
    g1433/in_1                                                                 
    g1433/z                    (u)  unmapped_nand2          2   11.0           
    g1424/in_1                                                                 
    g1424/z                    (u)  unmapped_complex2       3   16.5           
    g1426/in_0                                                                 
    g1426/z                    (u)  unmapped_nand2          3   16.5           
    g1416/in_1                                                                 
    g1416/z                    (u)  unmapped_nand2          1    5.5           
    g1413/in_0                                                                 
    g1413/z                    (u)  unmapped_nand2          3   16.5           
    g1408/in_1                                                                 
    g1408/z                    (u)  unmapped_nand2          1    5.5           
    g1404/in_0                                                                 
    g1404/z                    (u)  unmapped_nand2          1    5.5           
    g1403/in_0                                                                 
    g1403/z                    (u)  unmapped_complex2       1    5.5           
    g1402/in_1                                                                 
    g1402/z                    (u)  unmapped_nand2          2 2000.0           
  cb_oseqi/Out1[3] 
mash111_inst/Out1[4] 
dsm_out[3]                     <<<  interconnect                               
                                    out port                                   
(topPLLDigital.sdc_line_35)         ext delay                                  
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(clock clk_2)                       capture                            50000 R 
-------------------------------------------------------------------------------
Cost Group   : 'clk_2' (path_group 'clk_2')
Start-point  : mash111_inst/cb_seqi/Unit_Delay_out1_reg[1]/clk
End-point    : dsm_out[3]

(u) : Net has unmapped pin(s).

The global mapper estimates a slack for this path of 42186ps.
 
Cost Group 'sclk' target slack:   931 ps
Target path end-point (Pin: spi_slave_inst/mosi_shift_reg_reg[15]/d)

            Pin                         Type          Fanout Load Arrival   
                                                             (fF)   (ps)    
----------------------------------------------------------------------------
(clock sclk)                  <<<  launch                               0 R 
spi_slave_inst
  mosi_bit_counter_reg[0]/clk                                               
  mosi_bit_counter_reg[0]/q   (u)  unmapped_d_flop         5 27.5           
  g1204/in_1                                                                
  g1204/z                     (u)  unmapped_or2            1  5.5           
  g1198/in_1                                                                
  g1198/z                     (u)  unmapped_or2            1  5.5           
  g1168/in_1                                                                
  g1168/z                     (u)  unmapped_or2            3 16.5           
  g913/in_1                                                                 
  g913/z                      (u)  unmapped_nand2          1  5.5           
  g1214/in_0                                                                
  g1214/z                     (u)  unmapped_complex2      16 33.0           
  g1215/sel0                                                                
  g1215/z                     (u)  unmapped_bmux2          1  5.5           
  mosi_shift_reg_reg[15]/d    <<<  unmapped_d_flop                          
  mosi_shift_reg_reg[15]/clk       setup                                    
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(clock sclk)                       capture                          31250 R 
----------------------------------------------------------------------------
Cost Group   : 'sclk' (path_group 'sclk')
Start-point  : spi_slave_inst/mosi_bit_counter_reg[0]/clk
End-point    : spi_slave_inst/mosi_shift_reg_reg[15]/d

(u) : Net has unmapped pin(s).

The global mapper estimates a slack for this path of 29494ps.
 
/data/projects/vlsi_fall2025/jswalling/synthesis/generic/.st_launch_lnx-prd-03.ece.vt.edu_1939534

State Retention Synthesis Status
================================

Category                        Flops   Percentage
--------------------------------------------------
Total instances                   969        100.0
Excluded from State Retention     969        100.0
    - Will not convert            969        100.0
      - Preserved                   0          0.0
      - Power intent excluded     969        100.0
    - Could not convert             0          0.0
      - Scan type                   0          0.0
      - No suitable cell            0          0.0
State Retention instances           0          0.0
--------------------------------------------------

        Applying wireload models.
        Computing net loads.
PBS_Generic_Opt-Post - Elapsed_Time 27, CPU_Time 26.816874
stamp 'PBS_Generic_Opt-Post' being created for table 'pbs_debug'

  Total Time (Wall) |  Stage Time (Wall)  |   % (Wall)   |    Date - Time     |  Memory   | Stage
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:12(00:00:27) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:01:39 (Sep13) |  744.4 MB | PBS_Generic-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:27(00:00:28) | 100.0(100.0) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic_Opt-Post
--------------------+---------------------+--------------+--------------------+-----------+----------------------
Number of threads: 8 * 1   (id: pbs_debug, time_info v1.57)
Info: (*N*) indicates data that was populated from previously saved time_info database
Info: CPU time includes time of parent + longest thread
        Applying wireload models.
        Computing net loads.
PBS_Generic-Postgen HBO Optimizations - Elapsed_Time 0, CPU_Time 0.0
stamp 'PBS_Generic-Postgen HBO Optimizations' being created for table 'pbs_debug'

  Total Time (Wall) |  Stage Time (Wall)  |   % (Wall)   |    Date - Time     |  Memory   | Stage
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:12(00:00:27) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:01:39 (Sep13) |  744.4 MB | PBS_Generic-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:27(00:00:28) | 100.0(100.0) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic_Opt-Post
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic-Postgen HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
Number of threads: 8 * 1   (id: pbs_debug, time_info v1.57)
Info: (*N*) indicates data that was populated from previously saved time_info database
Info: CPU time includes time of parent + longest thread
Starting post syn_generic ultra-effort Boolean optimization
Redundancy removal succeeded.
Done post syn_generic ultra-effort Boolean optimization (0.00 cpu seconds) (0.00 elapsed cpu seconds)
Info    : Done synthesizing. [SYNTH-2]
        : Done synthesizing 'topPLLDigital' to generic gates.
        Applying wireload models.
        Computing net loads.
##>=================== Cadence Confidential (Generic-Logical) ===================
##>=================== Cadence Confidential (Generic-Logical) ===================
Start checking always on instances.
Done checking always on instances.
      flow.cputime  flow.realtime  timing.setup.tns  timing.setup.wns  snapshot
UM:*                                                                   syn_gen
@file(syn-generic-vlsiF25_v2.tcl) 96: 	syn_map
#----------------------------------------------------------------------------------------
# Root attributes for category: opt
#----------------------------------------------------------------------------------------
# Feature                           | Attribute                    | Value            
#----------------------------------------------------------------------------------------
# Avoid tied inputs                 | avoid_tied_inputs            | false (default)  
# Allow floating outputs            | opt_allow_floating_outputs   | false (default)  
# Power optimization effort         | design_power_effort          | none (default)   
# Do not use qbar sequential pins   | dont_use_qbar_seq_pins       | false (default)  
#----------------------------------------------------------------------------------------

##Generic Timing Info: typical gate delay   93.5 ps   std_slew:   13.6 ps   std_load:  5.5 fF  for library domain _default_
Mapping ChipWare ICG instances in topPLLDigital
Found 0 unmapped ChipWare ICG instances
Mapped 0 of 0 ChipWare ICG instances
Info    : Mapping. [SYNTH-4]
        : Mapping 'topPLLDigital' using 'medium' effort.
Mapper: Libraries have:
	domain _default_: 88 combo usable cells and 18 sequential usable cells
PBS_TechMap-Start - Elapsed_Time 0, CPU_Time 0.0
stamp 'PBS_TechMap-Start' being created for table 'pbs_debug'

  Total Time (Wall) |  Stage Time (Wall)  |   % (Wall)   |    Date - Time     |  Memory   | Stage
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:12(00:00:27) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:01:39 (Sep13) |  744.4 MB | PBS_Generic-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:27(00:00:28) | 100.0( 96.6) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic_Opt-Post
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic-Postgen HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:56) |  00:00:00(00:00:01) |   0.0(  3.4) |    9:02:08 (Sep13) |   1.24 GB | PBS_TechMap-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
Number of threads: 8 * 1   (id: pbs_debug, time_info v1.57)
Info: (*N*) indicates data that was populated from previously saved time_info database
Info: CPU time includes time of parent + longest thread
        Applying wireload models.
        Computing net loads.
PBS_TechMap-Premap HBO Optimizations - Elapsed_Time 0, CPU_Time 0.0
stamp 'PBS_TechMap-Premap HBO Optimizations' being created for table 'pbs_debug'

  Total Time (Wall) |  Stage Time (Wall)  |   % (Wall)   |    Date - Time     |  Memory   | Stage
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:12(00:00:27) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:01:39 (Sep13) |  744.4 MB | PBS_Generic-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:27(00:00:28) | 100.0( 96.6) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic_Opt-Post
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic-Postgen HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:56) |  00:00:00(00:00:01) |   0.0(  3.4) |    9:02:08 (Sep13) |   1.24 GB | PBS_TechMap-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:56) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:08 (Sep13) |   1.24 GB | PBS_TechMap-Premap HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
Number of threads: 8 * 1   (id: pbs_debug, time_info v1.57)
Info: (*N*) indicates data that was populated from previously saved time_info database
Info: CPU time includes time of parent + longest thread
Info    : Partition Based Synthesis execution skipped. [PHYS-752]
        : Design size is less than the partition size '100000' for distributed mapping optimization to kick in.
              Enable datapath components refolding ...
Mapper: Libraries have:
	domain _default_: 88 combo usable cells and 18 sequential usable cells
      Mapping 'topPLLDigital'...
        Preparing the circuit
          Pruning unused logic
          Analyzing hierarchical boundaries
          Aggressive hierarchical optimization: disabled
          Propagating constants
        Done preparing the circuit
          Structuring (delay-based) topPLLDigital...
          Done structuring (delay-based) topPLLDigital
Multi-threaded Virtual Mapping    (8 threads per ST process, 8 of 112 CPUs usable)
          Structuring (delay-based) logic partition in topPLLDigital...
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) logic partition in topPLLDigital
        Mapping logic partition in topPLLDigital...
          Structuring (delay-based) logic partition in topPLLDigital...
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) logic partition in topPLLDigital
        Mapping logic partition in topPLLDigital...
          Structuring (delay-based) cb_seq_337...
            Starting partial collapsing (xors only) cb_seq_337
            Finished partial collapsing.
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) cb_seq_337
        Mapping component cb_seq_337...
          Structuring (delay-based) mux_ctl_0x_335...
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) mux_ctl_0x_335
        Mapping component mux_ctl_0x_335...
          Structuring (delay-based) cb_seq...
            Starting partial collapsing (xors only) cb_seq
            Finished partial collapsing.
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) cb_seq
        Mapping component cb_seq...
          Structuring (delay-based) spi_slave_pll...
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) spi_slave_pll
        Mapping component spi_slave_pll...
          Structuring (delay-based) add_signed_162...
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) add_signed_162
        Mapping component add_signed_162...
          Structuring (delay-based) logic partition in Memory43b...
            Starting partial collapsing (xors only) cb_seq_338
            Finished partial collapsing.
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) logic partition in Memory43b
        Mapping logic partition in Memory43b...
          Structuring (delay-based) two_bit_counter...
            Starting partial collapsing (xors only) two_bit_counter
            Finished partial collapsing.
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) two_bit_counter
        Mapping component two_bit_counter...
          Structuring (delay-based) logic partition in topPLLDigital...
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) logic partition in topPLLDigital
        Mapping logic partition in topPLLDigital...
          Structuring (delay-based) clkDiv_DIV2...
          Done structuring (delay-based) clkDiv_DIV2
        Mapping component clkDiv_DIV2...
          Structuring (delay-based) cb_oseq...
            Starting redundancy-removal...
            Finished redundancy-removal...
            Starting xor partial collapsing cb_oseq
            Finished xor partial collapsing.
          Done structuring (delay-based) cb_oseq
        Mapping component cb_oseq...
          Structuring (delay-based) logic partition in mash111...
            Starting redundancy-removal...
            Finished redundancy-removal...
          Done structuring (delay-based) logic partition in mash111
        Mapping logic partition in mash111...
==================================
Stage : first_condense 
==================================
  =================
   Message Summary
  =================
------------------------------------------------------------------
|   Id   |Sev |Count|                Message Text                |
------------------------------------------------------------------
|PHYS-752|Info|    1|Partition Based Synthesis execution skipped.|
|SYNTH-2 |Info|    1|Done synthesizing.                          |
|SYNTH-4 |Info|    1|Mapping.                                    |
------------------------------------------------------------------
 
Global mapping target info
==========================
Cost Group 'clk' target slack:   182 ps
Target path end-point (Pin: fifo_inst/data_out_reg[10]/d)

          Pin                      Type          Fanout Load Arrival   
                                                        (fF)   (ps)    
-----------------------------------------------------------------------
(clock sclk)             <<<  launch                           93750 R 
spi_slave_inst
  data_valid_reg/clk                                                   
  data_valid_reg/q       (u)  unmapped_d_flop        22 27.5           
spi_slave_inst/data_valid 
fifo_inst/read_enable 
  cb_seqi/read_enable 
    g4638/in_0                                                         
    g4638/z              (u)  unmapped_nand2          3 16.5           
    g4624/in_0                                                         
    g4624/z              (u)  unmapped_complex2      16 22.0           
    g4609/in_1                                                         
    g4609/z              (u)  unmapped_complex2       4 22.0           
    g4576/in_0                                                         
    g4576/z              (u)  unmapped_or2           14 77.0           
    g4456/in_1                                                         
    g4456/z              (u)  unmapped_complex2       1  5.5           
    g4433/in_1                                                         
    g4433/z              (u)  unmapped_nand2          1  5.5           
    g4378/in_1                                                         
    g4378/z              (u)  unmapped_complex2       1  5.5           
    g4365/in_1                                                         
    g4365/z              (u)  unmapped_or2            1  5.5           
    g4351/in_1                                                         
    g4351/z              (u)  unmapped_or2            1  5.5           
    data_out_reg[10]/d   <<<  unmapped_d_flop                          
    data_out_reg[10]/clk      setup                                    
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(clock clk)                   capture                         100000 R 
                              latency                                  
                              uncertainty                              
-----------------------------------------------------------------------
Cost Group   : 'clk' (path_group 'clk')
Start-point  : spi_slave_inst/data_valid_reg/clk
End-point    : fifo_inst/cb_seqi/data_out_reg[10]/d

(u) : Net has unmapped pin(s).

The global mapper estimates a slack for this path of 4386ps.
 
Cost Group 'clk_2' target slack:  1453 ps
Target path end-point (Port: topPLLDigital/dsm_out[3])

             Pin                         Type          Fanout  Load  Arrival   
                                                               (fF)    (ps)    
-------------------------------------------------------------------------------
(clock clk_2)                  <<<  launch                                 0 R 
mash111_inst
  cb_seqi
    Unit_Delay_out1_reg[1]/clk                                                 
    Unit_Delay_out1_reg[1]/q   (u)  unmapped_d_flop         3   16.5           
  cb_seqi/add_134_34_B[0] 
  add_134_34/B[0] 
    g5/in_1                                                                    
    g5/z                       (u)  unmapped_nand2          3   16.5           
    g2939/in_1                                                                 
    g2939/z                    (u)  unmapped_complex2       1    5.5           
    g2916/in_1                                                                 
    g2916/z                    (u)  unmapped_nand2          3   16.5           
    g2915/in_1                                                                 
    g2915/z                    (u)  unmapped_nand2          1    5.5           
    g2911/in_1                                                                 
    g2911/z                    (u)  unmapped_nand2          3   16.5           
    g2910/in_1                                                                 
    g2910/z                    (u)  unmapped_nand2          1    5.5           
    g2906/in_1                                                                 
    g2906/z                    (u)  unmapped_nand2          3   16.5           
    g2905/in_1                                                                 
    g2905/z                    (u)  unmapped_nand2          1    5.5           
    g2901/in_1                                                                 
    g2901/z                    (u)  unmapped_nand2          3   16.5           
    g2900/in_1                                                                 
    g2900/z                    (u)  unmapped_nand2          1    5.5           
    g2896/in_1                                                                 
    g2896/z                    (u)  unmapped_nand2          3   16.5           
    g2895/in_1                                                                 
    g2895/z                    (u)  unmapped_nand2          1    5.5           
    g2891/in_1                                                                 
    g2891/z                    (u)  unmapped_nand2          3   16.5           
    g2887/in_1                                                                 
    g2887/z                    (u)  unmapped_nand2          1    5.5           
    g2886/in_1                                                                 
    g2886/z                    (u)  unmapped_nand2          3   16.5           
    g2885/in_1                                                                 
    g2885/z                    (u)  unmapped_nand2          1    5.5           
    g2881/in_1                                                                 
    g2881/z                    (u)  unmapped_nand2          3   16.5           
    g2880/in_1                                                                 
    g2880/z                    (u)  unmapped_nand2          1    5.5           
    g2876/in_1                                                                 
    g2876/z                    (u)  unmapped_nand2          3   16.5           
    g2875/in_1                                                                 
    g2875/z                    (u)  unmapped_nand2          1    5.5           
    g2871/in_1                                                                 
    g2871/z                    (u)  unmapped_nand2          3   16.5           
    g2870/in_1                                                                 
    g2870/z                    (u)  unmapped_nand2          1    5.5           
    g2866/in_1                                                                 
    g2866/z                    (u)  unmapped_nand2          3   16.5           
    g2865/in_1                                                                 
    g2865/z                    (u)  unmapped_nand2          1    5.5           
    g2861/in_1                                                                 
    g2861/z                    (u)  unmapped_nand2          3   16.5           
    g2860/in_1                                                                 
    g2860/z                    (u)  unmapped_nand2          1    5.5           
    g2856/in_1                                                                 
    g2856/z                    (u)  unmapped_nand2          3   16.5           
    g2852/in_1                                                                 
    g2852/z                    (u)  unmapped_nand2          1    5.5           
    g2851/in_1                                                                 
    g2851/z                    (u)  unmapped_nand2          3   16.5           
    g2850/in_1                                                                 
    g2850/z                    (u)  unmapped_nand2          1    5.5           
    g2846/in_1                                                                 
    g2846/z                    (u)  unmapped_nand2          3   16.5           
    g2842/in_1                                                                 
    g2842/z                    (u)  unmapped_nand2          1    5.5           
    g2841/in_1                                                                 
    g2841/z                    (u)  unmapped_nand2          3   16.5           
    g2840/in_1                                                                 
    g2840/z                    (u)  unmapped_nand2          1    5.5           
    g2836/in_1                                                                 
    g2836/z                    (u)  unmapped_nand2          3   16.5           
    g2835/in_1                                                                 
    g2835/z                    (u)  unmapped_nand2          1    5.5           
    g2831/in_1                                                                 
    g2831/z                    (u)  unmapped_nand2          3   16.5           
    g2830/in_1                                                                 
    g2830/z                    (u)  unmapped_nand2          1    5.5           
    g2826/in_1                                                                 
    g2826/z                    (u)  unmapped_nand2          3   16.5           
    g2822/in_1                                                                 
    g2822/z                    (u)  unmapped_nand2          1    5.5           
    g2821/in_1                                                                 
    g2821/z                    (u)  unmapped_nand2          3   16.5           
    g2817/in_1                                                                 
    g2817/z                    (u)  unmapped_nand2          1    5.5           
    g2816/in_1                                                                 
    g2816/z                    (u)  unmapped_nand2          3   16.5           
    g2812/in_1                                                                 
    g2812/z                    (u)  unmapped_nand2          1    5.5           
    g2811/in_1                                                                 
    g2811/z                    (u)  unmapped_nand2          3   16.5           
    g2810/in_1                                                                 
    g2810/z                    (u)  unmapped_nand2          1    5.5           
    g2806/in_1                                                                 
    g2806/z                    (u)  unmapped_nand2          3   16.5           
    g2802/in_1                                                                 
    g2802/z                    (u)  unmapped_nand2          1    5.5           
    g2801/in_1                                                                 
    g2801/z                    (u)  unmapped_nand2          3   16.5           
    g2797/in_1                                                                 
    g2797/z                    (u)  unmapped_nand2          1    5.5           
    g2796/in_1                                                                 
    g2796/z                    (u)  unmapped_nand2          3   16.5           
    g2792/in_1                                                                 
    g2792/z                    (u)  unmapped_nand2          1    5.5           
    g2791/in_1                                                                 
    g2791/z                    (u)  unmapped_nand2          3   16.5           
    g2787/in_1                                                                 
    g2787/z                    (u)  unmapped_nand2          1    5.5           
    g2786/in_1                                                                 
    g2786/z                    (u)  unmapped_nand2          3   16.5           
    g2782/in_1                                                                 
    g2782/z                    (u)  unmapped_nand2          1    5.5           
    g2781/in_1                                                                 
    g2781/z                    (u)  unmapped_nand2          3   16.5           
    g2780/in_1                                                                 
    g2780/z                    (u)  unmapped_nand2          1    5.5           
    g2776/in_1                                                                 
    g2776/z                    (u)  unmapped_nand2          3   16.5           
    g2775/in_1                                                                 
    g2775/z                    (u)  unmapped_nand2          1    5.5           
    g2771/in_1                                                                 
    g2771/z                    (u)  unmapped_nand2          3   16.5           
    g2767/in_1                                                                 
    g2767/z                    (u)  unmapped_nand2          1    5.5           
    g2766/in_1                                                                 
    g2766/z                    (u)  unmapped_nand2          3   16.5           
    g2762/in_1                                                                 
    g2762/z                    (u)  unmapped_nand2          1    5.5           
    g2761/in_1                                                                 
    g2761/z                    (u)  unmapped_nand2          3   16.5           
    g2759/in_0                                                                 
    g2759/z                    (u)  unmapped_or2            1    5.5           
    g2760/in_1                                                                 
    g2760/z                    (u)  unmapped_nand2          3   16.5           
  add_134_34/Z[33] 
  cb_oseqi/add_134_34_Z[2] 
    g2123/in_0                                                                 
    g2123/z                    (u)  unmapped_nand2          2   11.0           
    g2115/in_1                                                                 
    g2115/z                    (u)  unmapped_nand2          2   11.0           
    g2105/in_1                                                                 
    g2105/z                    (u)  unmapped_or2            1    5.5           
    g2106/in_1                                                                 
    g2106/z                    (u)  unmapped_nand2          3   16.5           
    g1864/in_0                                                                 
    g1864/z                    (u)  unmapped_or2            2   11.0           
    g2098/in_0                                                                 
    g2098/z                    (u)  unmapped_nand2          1    5.5           
    g2093/in_1                                                                 
    g2093/z                    (u)  unmapped_nand2          3   16.5           
    g2088/in_1                                                                 
    g2088/z                    (u)  unmapped_nand2          1    5.5           
    g2087/in_1                                                                 
    g2087/z                    (u)  unmapped_nand2          3   16.5           
    g2085/in_1                                                                 
    g2085/z                    (u)  unmapped_nand2          1    5.5           
    g2080/in_1                                                                 
    g2080/z                    (u)  unmapped_nand2          3   16.5           
    g2078/in_1                                                                 
    g2078/z                    (u)  unmapped_nand2          1    5.5           
    g2073/in_1                                                                 
    g2073/z                    (u)  unmapped_nand2          3   16.5           
    g2067/in_1                                                                 
    g2067/z                    (u)  unmapped_nand2          1    5.5           
    g2065/in_1                                                                 
    g2065/z                    (u)  unmapped_nand2          3   16.5           
    g2060/in_1                                                                 
    g2060/z                    (u)  unmapped_nand2          1    5.5           
    g2058/in_1                                                                 
    g2058/z                    (u)  unmapped_nand2          3   16.5           
    g2054/in_1                                                                 
    g2054/z                    (u)  unmapped_nand2          1    5.5           
    g2053/in_1                                                                 
    g2053/z                    (u)  unmapped_nand2          3   16.5           
    g2052/in_1                                                                 
    g2052/z                    (u)  unmapped_nand2          1    5.5           
    g2051/in_1                                                                 
    g2051/z                    (u)  unmapped_nand2          4   22.0           
    g2049/in_0                                                                 
    g2049/z                    (u)  unmapped_complex2       1    5.5           
    g2050/in_1                                                                 
    g2050/z                    (u)  unmapped_nand2          3   16.5           
    g756/in_0                                                                  
    g756/z                     (u)  unmapped_complex2       2   11.0           
    g2040/in_0                                                                 
    g2040/z                    (u)  unmapped_nand2          1    5.5           
    g2039/in_0                                                                 
    g2039/z                    (u)  unmapped_complex2       1    5.5           
    g2030/in_1                                                                 
    g2030/z                    (u)  unmapped_nand2          4   22.0           
    g2028/in_1                                                                 
    g2028/z                    (u)  unmapped_or2            1    5.5           
    g2029/in_1                                                                 
    g2029/z                    (u)  unmapped_nand2          2   11.0           
    g2020/in_0                                                                 
    g2020/z                    (u)  unmapped_complex2       3   16.5           
    g2024/in_1                                                                 
    g2024/z                    (u)  unmapped_nand2          3   16.5           
    g2019/in_1                                                                 
    g2019/z                    (u)  unmapped_nand2          1    5.5           
    g2009/in_0                                                                 
    g2009/z                    (u)  unmapped_nand2          3   16.5           
    g1900/in_1                                                                 
    g1900/z                    (u)  unmapped_nand2          1    5.5           
    g2007/in_0                                                                 
    g2007/z                    (u)  unmapped_nand2          1    5.5           
    g2003/in_0                                                                 
    g2003/z                    (u)  unmapped_complex2       1    5.5           
    g2002/in_1                                                                 
    g2002/z                    (u)  unmapped_nand2          2 2000.0           
  cb_oseqi/Out1[3] 
mash111_inst/Out1[4] 
dsm_out[3]                     <<<  interconnect                               
                                    out port                                   
(topPLLDigital.sdc_line_35)         ext delay                                  
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(clock clk_2)                       capture                            50000 R 
-------------------------------------------------------------------------------
Cost Group   : 'clk_2' (path_group 'clk_2')
Start-point  : mash111_inst/cb_seqi/Unit_Delay_out1_reg[1]/clk
End-point    : dsm_out[3]

(u) : Net has unmapped pin(s).

The global mapper estimates a slack for this path of 41980ps.
 
Cost Group 'sclk' target slack:   931 ps
Target path end-point (Pin: spi_slave_inst/mosi_shift_reg_reg[15]/d)

            Pin                         Type          Fanout Load Arrival   
                                                             (fF)   (ps)    
----------------------------------------------------------------------------
(clock sclk)                  <<<  launch                               0 R 
spi_slave_inst
  mosi_bit_counter_reg[1]/clk                                               
  mosi_bit_counter_reg[1]/q   (u)  unmapped_d_flop         5 27.5           
  g1691/in_1                                                                
  g1691/z                     (u)  unmapped_or2            1  5.5           
  g1686/in_1                                                                
  g1686/z                     (u)  unmapped_or2            1  5.5           
  g1649/in_1                                                                
  g1649/z                     (u)  unmapped_or2            3 16.5           
  g1379/in_1                                                                
  g1379/z                     (u)  unmapped_nand2          1  5.5           
  g1698/in_0                                                                
  g1698/z                     (u)  unmapped_complex2      16 33.0           
  g1701/sel0                                                                
  g1701/z                     (u)  unmapped_bmux2          1  5.5           
  mosi_shift_reg_reg[15]/d    <<<  unmapped_d_flop                          
  mosi_shift_reg_reg[15]/clk       setup                                    
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(clock sclk)                       capture                          31250 R 
----------------------------------------------------------------------------
Cost Group   : 'sclk' (path_group 'sclk')
Start-point  : spi_slave_inst/mosi_bit_counter_reg[1]/clk
End-point    : spi_slave_inst/mosi_shift_reg_reg[15]/d

(u) : Net has unmapped pin(s).

The global mapper estimates a slack for this path of 29494ps.
 
Multi-threaded Technology Mapping (8 threads per ST process, 8 of 112 CPUs usable)
          Restructuring (delay-based) logic partition in mash111...
          Done restructuring (delay-based) logic partition in mash111
        Optimizing logic partition in mash111...
          Restructuring (delay-based) clkDiv_DIV2...
          Done restructuring (delay-based) clkDiv_DIV2
        Optimizing component clkDiv_DIV2...
          Restructuring (delay-based) two_bit_counter...
          Done restructuring (delay-based) two_bit_counter
        Optimizing component two_bit_counter...
          Restructuring (delay-based) logic partition in Memory43b...
          Done restructuring (delay-based) logic partition in Memory43b
        Optimizing logic partition in Memory43b...
          Restructuring (delay-based) logic partition in topPLLDigital...
          Done restructuring (delay-based) logic partition in topPLLDigital
        Optimizing logic partition in topPLLDigital...
          Restructuring (delay-based) cb_oseq...
          Done restructuring (delay-based) cb_oseq
        Optimizing component cb_oseq...
          Restructuring (delay-based) cb_seq_337...
          Done restructuring (delay-based) cb_seq_337
        Optimizing component cb_seq_337...
          Restructuring (delay-based) mux_ctl_0x_335...
          Done restructuring (delay-based) mux_ctl_0x_335
        Optimizing component mux_ctl_0x_335...
          Restructuring (delay-based) cb_seq...
          Done restructuring (delay-based) cb_seq
        Optimizing component cb_seq...
          Restructuring (delay-based) spi_slave_pll...
          Done restructuring (delay-based) spi_slave_pll
        Optimizing component spi_slave_pll...
          Restructuring (delay-based) add_signed_162...
          Done restructuring (delay-based) add_signed_162
        Optimizing component add_signed_162...
        Early Area Reclamation for add_signed_162 'very_fast' (slack=34760, area=1350)...
                  			o_slack=34760,  bc_slack=0
          Restructuring (delay-based) add_signed...
          Done restructuring (delay-based) add_signed
        Optimizing component add_signed...
          Restructuring (delay-based) add_signed...
          Done restructuring (delay-based) add_signed
        Optimizing component add_signed...
          Restructuring (delay-based) logic partition in topPLLDigital...
          Done restructuring (delay-based) logic partition in topPLLDigital
        Optimizing logic partition in topPLLDigital...
          Restructuring (delay-based) logic partition in topPLLDigital...
          Done restructuring (delay-based) logic partition in topPLLDigital
        Optimizing logic partition in topPLLDigital...
 
Global mapping timing result
============================
        Applying wireload models.
        Computing net loads.
        Tracing clock networks.
        Levelizing the circuit.
        Computing delays.
        Computing arrivals and requireds.
            Pin                       Type       Fanout  Load  Slew Delay Arrival   
                                                         (fF)  (ps)  (ps)   (ps)    
------------------------------------------------------------------------------------
(clock clk_2)                      launch                                       0 R 
mash111_inst
  cb_seqi
    Unit_Delay_out1_reg[1]/CK                                    25    +0       0 R 
    Unit_Delay_out1_reg[1]/Q       SDFFRX1            2    5.3   38  +271     271 F 
  cb_seqi/add_134_34_B[0] 
  add_134_34/B[0] 
    g3708/A                                                            +0     271   
    g3708/CO                       ADDHX1             1    5.0   31  +103     374 F 
    g3707/CI                                                           +0     374   
    g3707/CO                       ADDFX1             1    5.0   56  +198     572 F 
    g3706/CI                                                           +0     572   
    g3706/CO                       ADDFX1             1    5.0   56  +208     779 F 
    g3705/CI                                                           +0     779   
    g3705/CO                       ADDFX1             1    5.0   56  +208     987 F 
    g3704/CI                                                           +0     987   
    g3704/CO                       ADDFX1             1    5.0   56  +208    1194 F 
    g3703/CI                                                           +0    1194   
    g3703/CO                       ADDFX1             1    5.0   56  +208    1402 F 
    g3702/CI                                                           +0    1402   
    g3702/CO                       ADDFX1             1    5.0   56  +208    1609 F 
    g3701/CI                                                           +0    1609   
    g3701/CO                       ADDFX1             1    5.0   56  +208    1817 F 
    g3700/CI                                                           +0    1817   
    g3700/CO                       ADDFX1             1    5.0   56  +208    2024 F 
    g3699/CI                                                           +0    2024   
    g3699/CO                       ADDFX1             1    5.0   56  +208    2232 F 
    g3698/CI                                                           +0    2232   
    g3698/CO                       ADDFX1             1    5.0   56  +208    2439 F 
    g3697/CI                                                           +0    2439   
    g3697/CO                       ADDFX1             1    5.0   56  +208    2647 F 
    g3696/CI                                                           +0    2647   
    g3696/CO                       ADDFX1             1    5.0   56  +208    2854 F 
    g3695/CI                                                           +0    2854   
    g3695/CO                       ADDFX1             1    5.0   56  +208    3062 F 
    g3694/CI                                                           +0    3062   
    g3694/CO                       ADDFX1             1    5.0   56  +208    3269 F 
    g3693/CI                                                           +0    3269   
    g3693/CO                       ADDFX1             1    5.0   56  +208    3477 F 
    g3692/CI                                                           +0    3477   
    g3692/CO                       ADDFX1             1    5.0   56  +208    3684 F 
    g3691/CI                                                           +0    3684   
    g3691/CO                       ADDFX1             1    5.0   56  +208    3892 F 
    g3690/CI                                                           +0    3892   
    g3690/CO                       ADDFX1             1    5.0   56  +208    4099 F 
    g3689/CI                                                           +0    4099   
    g3689/CO                       ADDFX1             1    5.0   56  +208    4307 F 
    g3688/CI                                                           +0    4307   
    g3688/CO                       ADDFX1             1    5.0   56  +208    4514 F 
    g3687/CI                                                           +0    4514   
    g3687/CO                       ADDFX1             1    5.0   56  +208    4722 F 
    g3686/CI                                                           +0    4722   
    g3686/CO                       ADDFX1             1    5.0   56  +208    4929 F 
    g3685/CI                                                           +0    4929   
    g3685/CO                       ADDFX1             1    5.0   56  +208    5137 F 
    g3684/CI                                                           +0    5137   
    g3684/CO                       ADDFX1             1    5.0   56  +208    5344 F 
    g3683/CI                                                           +0    5344   
    g3683/CO                       ADDFX1             1    5.0   56  +208    5552 F 
    g3682/CI                                                           +0    5552   
    g3682/CO                       ADDFX1             1    5.0   56  +208    5759 F 
    g3681/CI                                                           +0    5759   
    g3681/CO                       ADDFX1             1    5.0   56  +208    5967 F 
    g3680/CI                                                           +0    5967   
    g3680/CO                       ADDFX1             1    5.0   56  +208    6174 F 
    g3679/CI                                                           +0    6174   
    g3679/CO                       ADDFX1             1    5.0   56  +208    6382 F 
    g3678/CI                                                           +0    6382   
    g3678/CO                       ADDFX1             1    5.0   56  +208    6589 F 
    g3677/CI                                                           +0    6589   
    g3677/CO                       ADDFX1             1    5.0   56  +208    6797 F 
    g3676/CI                                                           +0    6797   
    g3676/CO                       ADDFX1             1    5.0   56  +208    7004 F 
    g3675/CI                                                           +0    7004   
    g3675/CO                       ADDFX1             1    5.0   56  +208    7212 F 
    g3674/CI                                                           +0    7212   
    g3674/CO                       ADDFX1             1    5.0   56  +208    7419 F 
    g3673/CI                                                           +0    7419   
    g3673/CO                       ADDFX1             1    5.0   56  +208    7627 F 
    g3672/CI                                                           +0    7627   
    g3672/CO                       ADDFX1             1    5.0   56  +208    7834 F 
    g3671/CI                                                           +0    7834   
    g3671/CO                       ADDFX1             1    5.0   56  +208    8042 F 
    g3670/CI                                                           +0    8042   
    g3670/CO                       ADDFX1             1    5.0   56  +208    8249 F 
    g3669/CI                                                           +0    8249   
    g3669/CO                       ADDFX1             1    5.0   56  +208    8457 F 
    g3668/CI                                                           +0    8457   
    g3668/S                        ADDFX1             3    6.6   66  +325    8781 R 
  add_134_34/Z[40] 
  cb_oseqi/add_134_34_Z[9] 
    g2603/B                                                            +0    8781   
    g2603/Y                        OR2X1              2    5.5   48  +101    8882 R 
    g2601/B                                                            +0    8882   
    g2601/Y                        CLKAND2X2          1    3.9   26   +81    8963 R 
    g2559/B                                                            +0    8963   
    g2559/Y                        CLKXOR2X1          4    9.7   63  +204    9167 F 
    g2556/B                                                            +0    9167   
    g2556/Y                        OR2X1              2    6.0   46  +160    9326 F 
    g2555/A1                                                           +0    9326   
    g2555/Y                        AOI22X1            1    5.6  137  +140    9466 R 
    g2554/A                                                            +0    9466   
    g2554/Y                        INVX2              3    8.4   43   +55    9522 F 
    g2553/B                                                            +0    9522   
    g2553/Y                        XNOR2X1            2    6.9   62  +170    9692 R 
    g2552/B                                                            +0    9692   
    g2552/Y                        NAND2X1            2    4.8   43   +58    9750 F 
    g2550/B                                                            +0    9750   
    g2550/Y                        OR2X1              3   10.5   60  +170    9919 F 
    g2546/A                                                            +0    9919   
    g2546/Y                        NAND2X1            3    8.6   76   +88   10007 R 
    g2541/B                                                            +0   10007   
    g2541/Y                        CLKXOR2X1          1    4.7   49  +157   10164 R 
    g2535/B                                                            +0   10164   
    g2535/S                        ADDHX1             2    5.8   49  +192   10356 F 
    g2534/A                                                            +0   10356   
    g2534/Y                        INVX1              1    3.9   40   +52   10407 R 
    g2530/B                                                            +0   10407   
    g2530/Y                        CLKXOR2X1          1    4.5   45  +186   10593 F 
    g2528/B                                                            +0   10593   
    g2528/Y                        XNOR2X4            1 1000.0 1656 +1306   11899 R 
  cb_oseqi/Out1[1] 
mash111_inst/Out1[1] 
dsm_out[1]                    <<<  interconnect                1656    +0   11899 R 
                                   out port                            +0   11899 R 
(topPLLDigital.sdc_line_37)        ext delay                        +1000   12899 R 
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(clock clk_2)                      capture                                  50000 R 
------------------------------------------------------------------------------------
Cost Group   : 'clk_2' (path_group 'clk_2')
Timing slack :   37101ps 
Start-point  : mash111_inst/cb_seqi/Unit_Delay_out1_reg[1]/CK
End-point    : dsm_out[1]

            Pin                    Type     Fanout Load Slew Delay Arrival   
                                                   (fF) (ps)  (ps)   (ps)    
-----------------------------------------------------------------------------
(clock sclk)                      launch                                 0 R 
spi_slave_inst
  mosi_bit_counter_reg[1]/CK                               0    +0       0 R 
  mosi_bit_counter_reg[1]/Q       DFFRX1         4 10.1   54  +277     277 F 
  g2283/A                                                       +0     277   
  g2283/Y                         NOR4X1         2  8.5  323  +309     586 R 
  g2279/A                                                       +0     586   
  g2279/Y                         CLKINVX2       2  7.1   65   +65     651 F 
  g2261/A0                                                      +0     651   
  g2261/Y                         AOI21X2       16 56.0  424  +353    1004 R 
  mosi_shift_reg_reg[0]/SE   <<<  SDFFRX1                       +0    1004   
  mosi_shift_reg_reg[0]/CK        setup                    0  +273    1278 R 
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(clock sclk)                      capture                            31250 R 
-----------------------------------------------------------------------------
Cost Group   : 'sclk' (path_group 'sclk')
Timing slack :   29972ps 
Start-point  : spi_slave_inst/mosi_bit_counter_reg[1]/CK
End-point    : spi_slave_inst/mosi_shift_reg_reg[0]/SE

         Pin                  Type       Fanout Load Slew Delay Arrival   
                                                (fF) (ps)  (ps)   (ps)    
--------------------------------------------------------------------------
(clock sclk)                launch                                93750 R 
spi_slave_inst
  data_valid_reg/CK                                     0    +0   93750 R 
  data_valid_reg/Q          DFFRX1           14 43.5  298  +441   94191 R 
spi_slave_inst/data_valid 
fifo_inst/read_enable 
  cb_seqi/read_enable 
    g6373/A                                                  +0   94191   
    g6373/Y                 CLKINVX2          8 21.8   97  +116   94307 F 
    g6330/A                                                  +0   94307   
    g6330/Y                 NOR2X1            3 10.3  165  +171   94478 R 
    g6325/B                                                  +0   94478   
    g6325/Y                 NAND2X1          16 49.5  284  +286   94764 F 
    g6315/B                                                  +0   94764   
    g6315/Y                 NOR2X1            4  7.3  172  +202   94966 R 
    g6309/C                                                  +0   94966   
    g6309/Y                 AND3X2           14 43.0  165  +301   95266 R 
    g6221/A1                                                 +0   95266   
    g6221/Y                 AOI222X1          1  3.0  112  +120   95386 F 
    g6115/D                                                  +0   95386   
    g6115/Y                 NAND4X1           1  1.8   57   +69   95455 R 
    data_out_reg[0]/D  <<<  DFFX1                            +0   95455   
    data_out_reg[0]/CK      setup                      25   +94   95549 R 
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(clock clk)                 capture                              100000 R 
                            latency                        +200  100200 R 
                            uncertainty                    -100  100100 R 
--------------------------------------------------------------------------
Cost Group   : 'clk' (path_group 'clk')
Timing slack :    4551ps 
Start-point  : spi_slave_inst/data_valid_reg/CK
End-point    : fifo_inst/cb_seqi/data_out_reg[0]/D

 
 
Global mapping status
=====================
                                   Group   
                                  Tot Wrst 
                           Total  Weighted 
Operation                   Area   Slacks  
 global_map                53951        0 

    Cost Group            Target    Slack    Diff.  Constr.
-----------------------------------------------------------
           clk               182     4551              6250     (launch clock period: 31250)
         clk_2              1453    37101             50000 
          sclk               931    29972             31250 

 
Global incremental target info
==============================
Cost Group 'clk' target slack:   125 ps
Target path end-point (Pin: fifo_inst/data_out_reg[13]/D (DFFX1/D))

         Pin                   Type       Fanout Load Arrival   
                                                 (fF)   (ps)    
----------------------------------------------------------------
(clock sclk)            <<<  launch                     93750 R 
spi_slave_inst
  data_valid_reg/CK                                             
  data_valid_reg/Q           DFFRX1           14 43.5           
spi_slave_inst/data_valid 
fifo_inst/read_enable 
  cb_seqi/read_enable 
    g6373/A                                                     
    g6373/Y                  CLKINVX2          8 21.8           
    g6330/A                                                     
    g6330/Y                  NOR2X1            3 10.3           
    g6325/B                                                     
    g6325/Y                  NAND2X1          16 49.5           
    g6315/B                                                     
    g6315/Y                  NOR2X1            4  7.3           
    g6309/C                                                     
    g6309/Y                  AND3X2           14 43.0           
    g6214/A1                                                    
    g6214/Y                  AOI222X1          1  3.0           
    g6111/D                                                     
    g6111/Y                  NAND4X1           1  1.8           
    data_out_reg[13]/D  <<<  DFFX1                              
    data_out_reg[13]/CK      setup                              
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(clock clk)                  capture                   100000 R 
                             latency                            
                             uncertainty                        
----------------------------------------------------------------
Cost Group   : 'clk' (path_group 'clk')
Start-point  : spi_slave_inst/data_valid_reg/CK
End-point    : fifo_inst/cb_seqi/data_out_reg[13]/D

The global mapper estimates a slack for this path of 3615ps.
 
Cost Group 'clk_2' target slack:   953 ps
Target path end-point (Port: topPLLDigital/dsm_out[1])

            Pin                       Type       Fanout  Load  Arrival   
                                                         (fF)    (ps)    
-------------------------------------------------------------------------
(clock clk_2)                 <<<  launch                            0 R 
mash111_inst
  cb_seqi
    Unit_Delay_out1_reg[1]/CK                                            
    Unit_Delay_out1_reg[1]/Q       SDFFRX1            2    5.3           
  cb_seqi/add_134_34_B[0] 
  add_134_34/B[0] 
    g3708/A                                                              
    g3708/CO                       ADDHX1             1    5.0           
    g3707/CI                                                             
    g3707/CO                       ADDFX1             1    5.0           
    g3706/CI                                                             
    g3706/CO                       ADDFX1             1    5.0           
    g3705/CI                                                             
    g3705/CO                       ADDFX1             1    5.0           
    g3704/CI                                                             
    g3704/CO                       ADDFX1             1    5.0           
    g3703/CI                                                             
    g3703/CO                       ADDFX1             1    5.0           
    g3702/CI                                                             
    g3702/CO                       ADDFX1             1    5.0           
    g3701/CI                                                             
    g3701/CO                       ADDFX1             1    5.0           
    g3700/CI                                                             
    g3700/CO                       ADDFX1             1    5.0           
    g3699/CI                                                             
    g3699/CO                       ADDFX1             1    5.0           
    g3698/CI                                                             
    g3698/CO                       ADDFX1             1    5.0           
    g3697/CI                                                             
    g3697/CO                       ADDFX1             1    5.0           
    g3696/CI                                                             
    g3696/CO                       ADDFX1             1    5.0           
    g3695/CI                                                             
    g3695/CO                       ADDFX1             1    5.0           
    g3694/CI                                                             
    g3694/CO                       ADDFX1             1    5.0           
    g3693/CI                                                             
    g3693/CO                       ADDFX1             1    5.0           
    g3692/CI                                                             
    g3692/CO                       ADDFX1             1    5.0           
    g3691/CI                                                             
    g3691/CO                       ADDFX1             1    5.0           
    g3690/CI                                                             
    g3690/CO                       ADDFX1             1    5.0           
    g3689/CI                                                             
    g3689/CO                       ADDFX1             1    5.0           
    g3688/CI                                                             
    g3688/CO                       ADDFX1             1    5.0           
    g3687/CI                                                             
    g3687/CO                       ADDFX1             1    5.0           
    g3686/CI                                                             
    g3686/CO                       ADDFX1             1    5.0           
    g3685/CI                                                             
    g3685/CO                       ADDFX1             1    5.0           
    g3684/CI                                                             
    g3684/CO                       ADDFX1             1    5.0           
    g3683/CI                                                             
    g3683/CO                       ADDFX1             1    5.0           
    g3682/CI                                                             
    g3682/CO                       ADDFX1             1    5.0           
    g3681/CI                                                             
    g3681/CO                       ADDFX1             1    5.0           
    g3680/CI                                                             
    g3680/CO                       ADDFX1             1    5.0           
    g3679/CI                                                             
    g3679/CO                       ADDFX1             1    5.0           
    g3678/CI                                                             
    g3678/CO                       ADDFX1             1    5.0           
    g3677/CI                                                             
    g3677/CO                       ADDFX1             1    5.0           
    g3676/CI                                                             
    g3676/CO                       ADDFX1             1    5.0           
    g3675/CI                                                             
    g3675/CO                       ADDFX1             1    5.0           
    g3674/CI                                                             
    g3674/CO                       ADDFX1             1    5.0           
    g3673/CI                                                             
    g3673/CO                       ADDFX1             1    5.0           
    g3672/CI                                                             
    g3672/CO                       ADDFX1             1    5.0           
    g3671/CI                                                             
    g3671/CO                       ADDFX1             1    5.0           
    g3670/CI                                                             
    g3670/CO                       ADDFX1             1    5.0           
    g3669/CI                                                             
    g3669/CO                       ADDFX1             1    5.0           
    g3668/CI                                                             
    g3668/S                        ADDFX1             3    6.6           
  add_134_34/Z[40] 
  cb_oseqi/add_134_34_Z[9] 
    g2603/B                                                              
    g2603/Y                        OR2X1              2    5.5           
    g2601/B                                                              
    g2601/Y                        CLKAND2X2          1    3.9           
    g2559/B                                                              
    g2559/Y                        CLKXOR2X1          4    9.7           
    g2556/B                                                              
    g2556/Y                        OR2X1              2    6.0           
    g2555/A1                                                             
    g2555/Y                        AOI22X1            1    5.6           
    g2554/A                                                              
    g2554/Y                        INVX2              3    8.4           
    g2553/B                                                              
    g2553/Y                        XNOR2X1            2    6.9           
    g2552/B                                                              
    g2552/Y                        NAND2X1            2    4.8           
    g2550/B                                                              
    g2550/Y                        OR2X1              3   10.5           
    g2546/A                                                              
    g2546/Y                        NAND2X1            3    8.6           
    g2541/B                                                              
    g2541/Y                        CLKXOR2X1          1    4.7           
    g2535/B                                                              
    g2535/S                        ADDHX1             2    5.8           
    g2534/A                                                              
    g2534/Y                        INVX1              1    3.9           
    g2530/B                                                              
    g2530/Y                        CLKXOR2X1          1    4.5           
    g2528/B                                                              
    g2528/Y                        XNOR2X4            1 1000.0           
  cb_oseqi/Out1[1] 
mash111_inst/Out1[1] 
dsm_out[1]                    <<<  interconnect                          
                                   out port                              
(topPLLDigital.sdc_line_37)        ext delay                             
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(clock clk_2)                      capture                       50000 R 
-------------------------------------------------------------------------
Cost Group   : 'clk_2' (path_group 'clk_2')
Start-point  : mash111_inst/cb_seqi/Unit_Delay_out1_reg[1]/CK
End-point    : dsm_out[1]

The global mapper estimates a slack for this path of 36198ps.
 
Cost Group 'sclk' target slack:   620 ps
Target path end-point (Pin: spi_slave_inst/mosi_shift_reg_reg[15]/SE (SDFFRX1/SE))

            Pin                    Type     Fanout Load Arrival   
                                                   (fF)   (ps)    
------------------------------------------------------------------
(clock sclk)                 <<<  launch                      0 R 
spi_slave_inst
  mosi_bit_counter_reg[1]/CK                                      
  mosi_bit_counter_reg[1]/Q       DFFRX1         4 10.1           
  g2283/A                                                         
  g2283/Y                         NOR4X1         2  8.5           
  g2279/A                                                         
  g2279/Y                         CLKINVX2       2  7.1           
  g2261/A0                                                        
  g2261/Y                         AOI21X2       16 56.0           
  mosi_shift_reg_reg[15]/SE  <<<  SDFFRX1                         
  mosi_shift_reg_reg[15]/CK       setup                           
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(clock sclk)                      capture                 31250 R 
------------------------------------------------------------------
Cost Group   : 'sclk' (path_group 'sclk')
Start-point  : spi_slave_inst/mosi_bit_counter_reg[1]/CK
End-point    : spi_slave_inst/mosi_shift_reg_reg[15]/SE

The global mapper estimates a slack for this path of 29039ps.
 
 
Global incremental timing result
================================
        Applying wireload models.
        Computing net loads.
        Tracing clock networks.
        Levelizing the circuit.
        Computing delays.
        Computing arrivals and requireds.
            Pin                       Type       Fanout  Load  Slew Delay Arrival   
                                                         (fF)  (ps)  (ps)   (ps)    
------------------------------------------------------------------------------------
(clock clk_2)                      launch                                       0 R 
mash111_inst
  cb_seqi
    Unit_Delay_out1_reg[1]/CK                                    25    +0       0 R 
    Unit_Delay_out1_reg[1]/Q       SDFFRX1            2    5.3   38  +271     271 F 
  cb_seqi/add_134_34_B[0] 
  add_134_34/B[0] 
    g3708/A                                                            +0     271   
    g3708/CO                       ADDHX1             1    5.0   31  +103     374 F 
    g3707/CI                                                           +0     374   
    g3707/CO                       ADDFX1             1    5.0   56  +198     572 F 
    g3706/CI                                                           +0     572   
    g3706/CO                       ADDFX1             1    5.0   56  +208     779 F 
    g3705/CI                                                           +0     779   
    g3705/CO                       ADDFX1             1    5.0   56  +208     987 F 
    g3704/CI                                                           +0     987   
    g3704/CO                       ADDFX1             1    5.0   56  +208    1194 F 
    g3703/CI                                                           +0    1194   
    g3703/CO                       ADDFX1             1    5.0   56  +208    1402 F 
    g3702/CI                                                           +0    1402   
    g3702/CO                       ADDFX1             1    5.0   56  +208    1609 F 
    g3701/CI                                                           +0    1609   
    g3701/CO                       ADDFX1             1    5.0   56  +208    1817 F 
    g3700/CI                                                           +0    1817   
    g3700/CO                       ADDFX1             1    5.0   56  +208    2024 F 
    g3699/CI                                                           +0    2024   
    g3699/CO                       ADDFX1             1    5.0   56  +208    2232 F 
    g3698/CI                                                           +0    2232   
    g3698/CO                       ADDFX1             1    5.0   56  +208    2439 F 
    g3697/CI                                                           +0    2439   
    g3697/CO                       ADDFX1             1    5.0   56  +208    2647 F 
    g3696/CI                                                           +0    2647   
    g3696/CO                       ADDFX1             1    5.0   56  +208    2854 F 
    g3695/CI                                                           +0    2854   
    g3695/CO                       ADDFX1             1    5.0   56  +208    3062 F 
    g3694/CI                                                           +0    3062   
    g3694/CO                       ADDFX1             1    5.0   56  +208    3269 F 
    g3693/CI                                                           +0    3269   
    g3693/CO                       ADDFX1             1    5.0   56  +208    3477 F 
    g3692/CI                                                           +0    3477   
    g3692/CO                       ADDFX1             1    5.0   56  +208    3684 F 
    g3691/CI                                                           +0    3684   
    g3691/CO                       ADDFX1             1    5.0   56  +208    3892 F 
    g3690/CI                                                           +0    3892   
    g3690/CO                       ADDFX1             1    5.0   56  +208    4099 F 
    g3689/CI                                                           +0    4099   
    g3689/CO                       ADDFX1             1    5.0   56  +208    4307 F 
    g3688/CI                                                           +0    4307   
    g3688/CO                       ADDFX1             1    5.0   56  +208    4514 F 
    g3687/CI                                                           +0    4514   
    g3687/CO                       ADDFX1             1    5.0   56  +208    4722 F 
    g3686/CI                                                           +0    4722   
    g3686/CO                       ADDFX1             1    5.0   56  +208    4929 F 
    g3685/CI                                                           +0    4929   
    g3685/CO                       ADDFX1             1    5.0   56  +208    5137 F 
    g3684/CI                                                           +0    5137   
    g3684/CO                       ADDFX1             1    5.0   56  +208    5344 F 
    g3683/CI                                                           +0    5344   
    g3683/CO                       ADDFX1             1    5.0   56  +208    5552 F 
    g3682/CI                                                           +0    5552   
    g3682/CO                       ADDFX1             1    5.0   56  +208    5759 F 
    g3681/CI                                                           +0    5759   
    g3681/CO                       ADDFX1             1    5.0   56  +208    5967 F 
    g3680/CI                                                           +0    5967   
    g3680/CO                       ADDFX1             1    5.0   56  +208    6174 F 
    g3679/CI                                                           +0    6174   
    g3679/CO                       ADDFX1             1    5.0   56  +208    6382 F 
    g3678/CI                                                           +0    6382   
    g3678/CO                       ADDFX1             1    5.0   56  +208    6589 F 
    g3677/CI                                                           +0    6589   
    g3677/CO                       ADDFX1             1    5.0   56  +208    6797 F 
    g3676/CI                                                           +0    6797   
    g3676/CO                       ADDFX1             1    5.0   56  +208    7004 F 
    g3675/CI                                                           +0    7004   
    g3675/CO                       ADDFX1             1    5.0   56  +208    7212 F 
    g3674/CI                                                           +0    7212   
    g3674/CO                       ADDFX1             1    5.0   56  +208    7419 F 
    g3673/CI                                                           +0    7419   
    g3673/CO                       ADDFX1             1    5.0   56  +208    7627 F 
    g3672/CI                                                           +0    7627   
    g3672/CO                       ADDFX1             1    5.0   56  +208    7834 F 
    g3671/CI                                                           +0    7834   
    g3671/CO                       ADDFX1             1    5.0   56  +208    8042 F 
    g3670/CI                                                           +0    8042   
    g3670/CO                       ADDFX1             1    5.0   56  +208    8249 F 
    g3669/CI                                                           +0    8249   
    g3669/CO                       ADDFX1             1    5.0   56  +208    8457 F 
    g3668/CI                                                           +0    8457   
    g3668/S                        ADDFX1             3    6.6   66  +325    8781 R 
  add_134_34/Z[40] 
  cb_oseqi/add_134_34_Z[9] 
    g2603/B                                                            +0    8781   
    g2603/Y                        OR2X1              2    5.5   48  +101    8882 R 
    g2601/B                                                            +0    8882   
    g2601/Y                        CLKAND2X2          1    3.9   26   +81    8963 R 
    g2559/B                                                            +0    8963   
    g2559/Y                        CLKXOR2X1          4    9.7   63  +204    9167 F 
    g2556/B                                                            +0    9167   
    g2556/Y                        OR2X1              2    6.0   46  +160    9326 F 
    g2555/A1                                                           +0    9326   
    g2555/Y                        AOI22X1            1    5.6  137  +140    9466 R 
    g2554/A                                                            +0    9466   
    g2554/Y                        INVX2              3    8.4   43   +55    9522 F 
    g2553/B                                                            +0    9522   
    g2553/Y                        XNOR2X1            2    6.9   62  +170    9692 R 
    g2552/B                                                            +0    9692   
    g2552/Y                        NAND2X1            2    4.8   43   +58    9750 F 
    g2550/B                                                            +0    9750   
    g2550/Y                        OR2X1              3   10.5   60  +170    9919 F 
    g2546/A                                                            +0    9919   
    g2546/Y                        NAND2X1            3    8.6   76   +88   10007 R 
    g2545/A                                                            +0   10007   
    g2545/Y                        INVX1              1    3.0   28   +39   10046 F 
    g2543/B                                                            +0   10046   
    g2543/Y                        NOR2X1             2    5.9  105   +92   10138 R 
    g2538/B                                                            +0   10138   
    g2538/Y                        NOR2X1             2    5.9   44   +61   10199 F 
    g2536/B0                                                           +0   10199   
    g2536/Y                        AOI21X1            3    9.0  167  +148   10347 R 
    g2533/B                                                            +0   10347   
    g2533/Y                        NAND2X1            2    5.9   70   +89   10436 F 
    g2526/A0                                                           +0   10436   
    g2526/Y                        AOI22X1            1    5.5  136  +163   10599 R 
    g2525/A                                                            +0   10599   
    g2525/Y                        CLKINVX2           1    2.9   29   +36   10635 F 
    g2524/A1                                                           +0   10635   
    g2524/Y                        OAI22X1            1    5.5  151  +127   10761 R 
  cb_oseqi/Out1[3] 
mash111_inst/Out1[4] 
g303/A                                                                 +0   10761   
g303/Y                             CLKINVX2           2   83.8  156  +184   10945 F 
g301/A                                                                 +0   10945   
g301/Y                             INVX16             1 1000.0  435  +389   11334 R 
dsm_out[4]                    <<<  interconnect                 435    +0   11334 R 
                                   out port                            +0   11334 R 
(topPLLDigital.sdc_line_34)        ext delay                        +1000   12334 R 
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(clock clk_2)                      capture                                  50000 R 
------------------------------------------------------------------------------------
Cost Group   : 'clk_2' (path_group 'clk_2')
Timing slack :   37666ps 
Start-point  : mash111_inst/cb_seqi/Unit_Delay_out1_reg[1]/CK
End-point    : dsm_out[4]

            Pin                    Type     Fanout Load Slew Delay Arrival   
                                                   (fF) (ps)  (ps)   (ps)    
-----------------------------------------------------------------------------
(clock sclk)                      launch                                 0 R 
spi_slave_inst
  mosi_bit_counter_reg[1]/CK                               0    +0       0 R 
  mosi_bit_counter_reg[1]/Q       DFFRX1         4 10.1   54  +277     277 F 
  g2283/A                                                       +0     277   
  g2283/Y                         NOR4X1         2  8.5  323  +309     586 R 
  g2279/A                                                       +0     586   
  g2279/Y                         CLKINVX2       2  7.1   65   +65     651 F 
  g2261/A0                                                      +0     651   
  g2261/Y                         AOI21X2       15 50.9  390  +329     980 R 
  drc_bufs2340/A                                                +0     980   
  drc_bufs2340/Y                  BUFX2          2  7.0   46  +177    1157 R 
  mosi_shift_reg_reg[12]/SE  <<<  SDFFRX1                       +0    1157   
  mosi_shift_reg_reg[12]/CK       setup                    0  +224    1382 R 
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(clock sclk)                      capture                            31250 R 
-----------------------------------------------------------------------------
Cost Group   : 'sclk' (path_group 'sclk')
Timing slack :   29868ps 
Start-point  : spi_slave_inst/mosi_bit_counter_reg[1]/CK
End-point    : spi_slave_inst/mosi_shift_reg_reg[12]/SE

         Pin                  Type       Fanout Load Slew Delay Arrival   
                                                (fF) (ps)  (ps)   (ps)    
--------------------------------------------------------------------------
(clock sclk)                launch                                93750 R 
spi_slave_inst
  data_valid_reg/CK                                     0    +0   93750 R 
  data_valid_reg/Q          DFFRX1           14 43.5  298  +441   94191 R 
spi_slave_inst/data_valid 
fifo_inst/read_enable 
  cb_seqi/read_enable 
    g6373/A                                                  +0   94191   
    g6373/Y                 CLKINVX2          8 21.8   97  +116   94307 F 
    g6330/A                                                  +0   94307   
    g6330/Y                 NOR2X1            3 10.3  165  +171   94478 R 
    g6325/B                                                  +0   94478   
    g6325/Y                 NAND2X1          15 45.6  264  +271   94748 F 
    g6315/B                                                  +0   94748   
    g6315/Y                 NOR2X1            4  7.3  167  +195   94943 R 
    g6309/C                                                  +0   94943   
    g6309/Y                 AND3X2           14 43.0  165  +299   95242 R 
    g6221/A1                                                 +0   95242   
    g6221/Y                 AOI222X1          1  3.0  108  +120   95362 F 
    g6115/D                                                  +0   95362   
    g6115/Y                 NAND4X1           1  1.8   57   +68   95430 R 
    data_out_reg[0]/D  <<<  DFFX1                            +0   95430   
    data_out_reg[0]/CK      setup                      25   +94   95524 R 
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(clock clk)                 capture                              100000 R 
                            latency                        +200  100200 R 
                            uncertainty                    -100  100100 R 
--------------------------------------------------------------------------
Cost Group   : 'clk' (path_group 'clk')
Timing slack :    4576ps 
Start-point  : spi_slave_inst/data_valid_reg/CK
End-point    : fifo_inst/cb_seqi/data_out_reg[0]/D

 
==================================
Stage : global_incr_map 
==================================
  =================
   Message Summary
  =================
----------------------------------------------------------------
| Id |Sev |Count|                 Message Text                 |
----------------------------------------------------------------
|PA-7|Info|   26|Resetting power analysis results.             |
|    |    |     |All computed switching activities are removed.|
----------------------------------------------------------------
 
Global incremental optimization status
======================================
                                   Group   
                                  Tot Wrst 
                           Total  Weighted 
Operation                   Area   Slacks  
 global_incr               54349        0 

    Cost Group            Target    Slack    Diff.  Constr.
-----------------------------------------------------------
           clk               125     4576              6250     (launch clock period: 31250)
         clk_2               953    37666             50000 
          sclk               620    29868             31250 


Scan mapping status report
==========================
    Scan mapping: converting flip-flops that pass TDRC.
    Scan mapping: bypassed.  You have to either 1) set attribute 'dft_scan_map_mode' to 'tdrc_pass' and run 'check_dft_rules' or 2) set attribute 'dft_scan_map_mode' to 'force_all'.

    Scan mapping bypassed because no TDRC data is available: either command 'check_dft_rules' has not been run or TDRC data has been subsequently invalidated.
/data/projects/vlsi_fall2025/jswalling/synthesis/generic/.st_launch_lnx-prd-03.ece.vt.edu_1939534

State Retention Synthesis Status
================================

Category                        Flops   Percentage
--------------------------------------------------
Total instances                   969        100.0
Excluded from State Retention     969        100.0
    - Will not convert            969        100.0
      - Preserved                   0          0.0
      - Power intent excluded     969        100.0
    - Could not convert             0          0.0
      - Scan type                   0          0.0
      - No suitable cell            0          0.0
State Retention instances           0          0.0
--------------------------------------------------

INFO: skipping constant propagation
PBS_Techmap-Global Mapping - Elapsed_Time 12, CPU_Time 12.518323000000002
stamp 'PBS_Techmap-Global Mapping' being created for table 'pbs_debug'

  Total Time (Wall) |  Stage Time (Wall)  |   % (Wall)   |    Date - Time     |  Memory   | Stage
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:12(00:00:27) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:01:39 (Sep13) |  744.4 MB | PBS_Generic-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:27(00:00:28) |  69.0( 68.3) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic_Opt-Post
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic-Postgen HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:56) |  00:00:00(00:00:01) |   0.0(  2.4) |    9:02:08 (Sep13) |   1.24 GB | PBS_TechMap-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:56) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:08 (Sep13) |   1.24 GB | PBS_TechMap-Premap HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:52(00:01:08) |  00:00:12(00:00:12) |  31.0( 29.3) |    9:02:20 (Sep13) |   1.23 GB | PBS_Techmap-Global Mapping
--------------------+---------------------+--------------+--------------------+-----------+----------------------
Number of threads: 8 * 1   (id: pbs_debug, time_info v1.57)
Info: (*N*) indicates data that was populated from previously saved time_info database
Info: CPU time includes time of parent + longest thread
Info    : Wrote formal verification information. [CFM-5]
        : Wrote 'fv/topPLLDigital/fv_map.fv.json' for netlist 'fv/topPLLDigital/fv_map.v.gz'.
Info    : Wrote dofile. [CFM-1]
        : Dofile is 'fv/topPLLDigital/rtl_to_fv_map.do'.
        : RTL names flow is enabled.
        Applying wireload models.
        Computing net loads.
PBS_TechMap-Datapath Postmap Operations - Elapsed_Time 2, CPU_Time 1.9621989999999983
stamp 'PBS_TechMap-Datapath Postmap Operations' being created for table 'pbs_debug'

  Total Time (Wall) |  Stage Time (Wall)  |   % (Wall)   |    Date - Time     |  Memory   | Stage
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:12(00:00:27) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:01:39 (Sep13) |  744.4 MB | PBS_Generic-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:27(00:00:28) |  65.8( 65.1) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic_Opt-Post
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic-Postgen HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:56) |  00:00:00(00:00:01) |   0.0(  2.3) |    9:02:08 (Sep13) |   1.24 GB | PBS_TechMap-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:56) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:08 (Sep13) |   1.24 GB | PBS_TechMap-Premap HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:52(00:01:08) |  00:00:12(00:00:12) |  29.6( 27.9) |    9:02:20 (Sep13) |   1.23 GB | PBS_Techmap-Global Mapping
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:54(00:01:10) |  00:00:01(00:00:02) |   4.6(  4.7) |    9:02:22 (Sep13) |   1.23 GB | PBS_TechMap-Datapath Postmap Operations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
Number of threads: 8 * 1   (id: pbs_debug, time_info v1.57)
Info: (*N*) indicates data that was populated from previously saved time_info database
Info: CPU time includes time of parent + longest thread
PBS_TechMap-Postmap HBO Optimizations - Elapsed_Time 0, CPU_Time -0.03984100000000268
stamp 'PBS_TechMap-Postmap HBO Optimizations' being created for table 'pbs_debug'

  Total Time (Wall) |  Stage Time (Wall)  |   % (Wall)   |    Date - Time     |  Memory   | Stage
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:12(00:00:27) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:01:39 (Sep13) |  744.4 MB | PBS_Generic-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:27(00:00:28) |  65.8( 65.1) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic_Opt-Post
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic-Postgen HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:56) |  00:00:00(00:00:01) |   0.0(  2.3) |    9:02:08 (Sep13) |   1.24 GB | PBS_TechMap-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:56) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:08 (Sep13) |   1.24 GB | PBS_TechMap-Premap HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:52(00:01:08) |  00:00:12(00:00:12) |  29.6( 27.9) |    9:02:20 (Sep13) |   1.23 GB | PBS_Techmap-Global Mapping
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:54(00:01:10) |  00:00:01(00:00:02) |   4.6(  4.7) |    9:02:22 (Sep13) |   1.23 GB | PBS_TechMap-Datapath Postmap Operations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:54(00:01:10) |  00:00:00(00:00:00) |  -0.1(  0.0) |    9:02:22 (Sep13) |   1.23 GB | PBS_TechMap-Postmap HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
Number of threads: 8 * 1   (id: pbs_debug, time_info v1.57)
Info: (*N*) indicates data that was populated from previously saved time_info database
Info: CPU time includes time of parent + longest thread
 Doing ConstProp on design:topPLLDigital ... 

Time taken by ConstProp Step: 00:00:00
PBS_TechMap-Postmap Clock Gating - Elapsed_Time 0, CPU_Time 0.0
stamp 'PBS_TechMap-Postmap Clock Gating' being created for table 'pbs_debug'

  Total Time (Wall) |  Stage Time (Wall)  |   % (Wall)   |    Date - Time     |  Memory   | Stage
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:12(00:00:27) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:01:39 (Sep13) |  744.4 MB | PBS_Generic-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:27(00:00:28) |  65.8( 65.1) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic_Opt-Post
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic-Postgen HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:56) |  00:00:00(00:00:01) |   0.0(  2.3) |    9:02:08 (Sep13) |   1.24 GB | PBS_TechMap-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:56) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:08 (Sep13) |   1.24 GB | PBS_TechMap-Premap HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:52(00:01:08) |  00:00:12(00:00:12) |  29.6( 27.9) |    9:02:20 (Sep13) |   1.23 GB | PBS_Techmap-Global Mapping
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:54(00:01:10) |  00:00:01(00:00:02) |   4.6(  4.7) |    9:02:22 (Sep13) |   1.23 GB | PBS_TechMap-Datapath Postmap Operations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:54(00:01:10) |  00:00:00(00:00:00) |  -0.1(  0.0) |    9:02:22 (Sep13) |   1.23 GB | PBS_TechMap-Postmap HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:54(00:01:10) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:22 (Sep13) |   1.23 GB | PBS_TechMap-Postmap Clock Gating
--------------------+---------------------+--------------+--------------------+-----------+----------------------
Number of threads: 8 * 1   (id: pbs_debug, time_info v1.57)
Info: (*N*) indicates data that was populated from previously saved time_info database
Info: CPU time includes time of parent + longest thread
-------------------------------------------------------------------------------
 hi_fo_buf                 54349        0         0         0        0        0

           Trick     Calls     Accepts   Attempts    Time(secs) 
-----------------------------------------------------------
       hi_fo_buf         1  (        0 /        0 )  0.00

 
Incremental optimization status
===============================
                                   Group   
                                  Tot Wrst     Total - - - - DRC Totals - - - -
                           Total  Weighted      Neg      Max       Max     Max  
Operation                   Area   Slacks      Slack    Trans      Cap   Fanout 
 init_delay                54349        0         0         0        0        0

           Trick     Calls     Accepts   Attempts    Time(secs) 
-----------------------------------------------------------
       crit_upsz         0  (        0 /        0 )  0.00
    plc_bal_star         0  (        0 /        0 )  0.00
     drc_buftimb         0  (        0 /        0 )  0.00
          plc_st         0  (        0 /        0 )  0.00
    plc_st_fence         0  (        0 /        0 )  0.00
        plc_star         0  (        0 /        0 )  0.00
      plc_laf_st         0  (        0 /        0 )  0.00
 plc_laf_st_fence         0  (        0 /        0 )  0.00
     drc_buftims         0  (        0 /        0 )  0.00
            fopt         0  (        0 /        0 )  0.00
   plc_laf_lo_st         0  (        0 /        0 )  0.00
       plc_lo_st         0  (        0 /        0 )  0.00
        mb_split         0  (        0 /        0 )  0.00

 
Local TNS optimization status
=============================
                                   Group   
                                  Tot Wrst     Total - - - - DRC Totals - - - -
                           Total  Weighted      Neg      Max       Max     Max  
Operation                   Area   Slacks      Slack    Trans      Cap   Fanout 
 init_tns                  54349        0         0         0        0        0

           Trick     Calls     Accepts   Attempts    Time(secs) 
-----------------------------------------------------------
    plc_bal_star         0  (        0 /        0 )  0.00
     drc_buftimb         0  (        0 /        0 )  0.00
     drc_buftims         0  (        0 /        0 )  0.00
       crit_upsz         0  (        0 /        0 )  0.00
   plc_laf_lo_st         0  (        0 /        0 )  0.00
       plc_lo_st         0  (        0 /        0 )  0.00
            fopt         0  (        0 /        0 )  0.00
       crit_dnsz         0  (        0 /        0 )  0.00
             dup         0  (        0 /        0 )  0.00
        setup_dn         0  (        0 /        0 )  0.00
        mb_split         0  (        0 /        0 )  0.00

PBS_TechMap-Postmap Cleanup - Elapsed_Time 0, CPU_Time 0.9593990000000048
stamp 'PBS_TechMap-Postmap Cleanup' being created for table 'pbs_debug'

  Total Time (Wall) |  Stage Time (Wall)  |   % (Wall)   |    Date - Time     |  Memory   | Stage
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:12(00:00:27) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:01:39 (Sep13) |  744.4 MB | PBS_Generic-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:27(00:00:28) |  64.4( 65.1) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic_Opt-Post
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic-Postgen HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:56) |  00:00:00(00:00:01) |   0.0(  2.3) |    9:02:08 (Sep13) |   1.24 GB | PBS_TechMap-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:56) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:08 (Sep13) |   1.24 GB | PBS_TechMap-Premap HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:52(00:01:08) |  00:00:12(00:00:12) |  29.0( 27.9) |    9:02:20 (Sep13) |   1.23 GB | PBS_Techmap-Global Mapping
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:54(00:01:10) |  00:00:01(00:00:02) |   4.5(  4.7) |    9:02:22 (Sep13) |   1.23 GB | PBS_TechMap-Datapath Postmap Operations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:54(00:01:10) |  00:00:00(00:00:00) |  -0.1(  0.0) |    9:02:22 (Sep13) |   1.23 GB | PBS_TechMap-Postmap HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:54(00:01:10) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:22 (Sep13) |   1.23 GB | PBS_TechMap-Postmap Clock Gating
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:55(00:01:10) |  00:00:00(00:00:00) |   2.2(  0.0) |    9:02:22 (Sep13) |   1.23 GB | PBS_TechMap-Postmap Cleanup
--------------------+---------------------+--------------+--------------------+-----------+----------------------
Number of threads: 8 * 1   (id: pbs_debug, time_info v1.57)
Info: (*N*) indicates data that was populated from previously saved time_info database
Info: CPU time includes time of parent + longest thread
PBS_Techmap-Post_MBCI - Elapsed_Time 0, CPU_Time 0.0
stamp 'PBS_Techmap-Post_MBCI' being created for table 'pbs_debug'

  Total Time (Wall) |  Stage Time (Wall)  |   % (Wall)   |    Date - Time     |  Memory   | Stage
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:12(00:00:27) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:01:39 (Sep13) |  744.4 MB | PBS_Generic-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:27(00:00:28) |  64.4( 65.1) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic_Opt-Post
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:55) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:07 (Sep13) |   1.26 GB | PBS_Generic-Postgen HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:56) |  00:00:00(00:00:01) |   0.0(  2.3) |    9:02:08 (Sep13) |   1.24 GB | PBS_TechMap-Start
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:39(00:00:56) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:08 (Sep13) |   1.24 GB | PBS_TechMap-Premap HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:52(00:01:08) |  00:00:12(00:00:12) |  29.0( 27.9) |    9:02:20 (Sep13) |   1.23 GB | PBS_Techmap-Global Mapping
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:54(00:01:10) |  00:00:01(00:00:02) |   4.5(  4.7) |    9:02:22 (Sep13) |   1.23 GB | PBS_TechMap-Datapath Postmap Operations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:54(00:01:10) |  00:00:00(00:00:00) |  -0.1(  0.0) |    9:02:22 (Sep13) |   1.23 GB | PBS_TechMap-Postmap HBO Optimizations
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:54(00:01:10) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:22 (Sep13) |   1.23 GB | PBS_TechMap-Postmap Clock Gating
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:55(00:01:10) |  00:00:00(00:00:00) |   2.2(  0.0) |    9:02:22 (Sep13) |   1.23 GB | PBS_TechMap-Postmap Cleanup
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:55(00:01:10) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:02:22 (Sep13) |   1.23 GB | PBS_Techmap-Post_MBCI
--------------------+---------------------+--------------+--------------------+-----------+----------------------
Number of threads: 8 * 1   (id: pbs_debug, time_info v1.57)
Info: (*N*) indicates data that was populated from previously saved time_info database
Info: CPU time includes time of parent + longest thread
##>=================== Cadence Confidential (Mapping-Logical) ===================
##>Main Thread Summary:
##>----------------------------------------------------------------------------------------
##>STEP                           Elapsed       WNS       TNS     Insts      Area    Memory
##>----------------------------------------------------------------------------------------
##>M:Initial                            0         -         -      3355     67644      1235
##>M:Early Clock Gating                 0         -         -         -         -         -
##>M:Pre Cleanup                        0         -         -      3355     67644      1235
##>M:Setup                              0         -         -         -         -         -
##>M:Launch ST                          0         -         -         -         -         -
##>M:Design Partition                   0         -         -         -         -         -
##>M:Create Partition Netlists          0         -         -         -         -         -
##>M:Init Power                         0         -         -         -         -         -
##>M:Budgeting                          0         -         -         -         -         -
##>M:Derenv-DB                          0         -         -         -         -         -
##>M:Debug Outputs                      0         -         -         -         -         -
##>M:ST loading                         0         -         -         -         -         -
##>M:Distributed                        0         -         -         -         -         -
##>M:Timer                              0         -         -         -         -         -
##>M:Assembly                           0         -         -         -         -         -
##>M:DFT                                0         -         -         -         -         -
##>M:DP Operations                      2         -         -      2082     54349      1233
##>M:Const Prop                         0      4576         0      2082     54349      1233
##>M:Cleanup                            0      4576         0      2082     54349      1233
##>M:MBCI                               0         -         -      2082     54349      1233
##>M:PostGen Opt                        0         -         -         -         -         -
##>M:Const Gate Removal                 0         -         -         -         -         -
##>M:Early Clock Gating Cleanup         0         -         -         -         -         -
##>M:Misc                              12
##>----------------------------------------------------------------------------------------
##>Total Elapsed                       14
##>========================================================================================
Info    : Done mapping. [SYNTH-5]
        : Done mapping 'topPLLDigital'.
        Applying wireload models.
        Computing net loads.
Start checking always on instances.
Done checking always on instances.
      flow.cputime  flow.realtime  timing.setup.tns  timing.setup.wns  snapshot
UM:*                                                                   syn_map
@file(syn-generic-vlsiF25_v2.tcl) 97: 	syn_opt
Warning : The selected flow setting will be removed in a future release. [SYNTH-33]
        : The use of 'syn_opt' for logical only optimization will be obsolete in a future release.
	Transition to 'syn_opt -logical' or 'syn_opt -spatial'.

        : Contact Cadence support to understand current flows.
Info    : Incrementally optimizing. [SYNTH-7]
        : Incrementally optimizing 'topPLLDigital' using 'medium' effort.
 
Incremental optimization status
===============================
                                   Group   
                                  Tot Wrst     Total - - - - DRC Totals - - - -
                           Total  Weighted      Neg      Max       Max     Max  
Operation                   Area   Slacks      Slack    Trans      Cap   Fanout 
 init_iopt                 54349        0         0         0        0        0
-------------------------------------------------------------------------------
 const_prop                54349        0         0         0        0        0
 simp_cc_inputs            54340        0         0         0        0        0
 
Incremental optimization status
===============================
                                   Group   
                                  Tot Wrst     Total - - - - DRC Totals - - - -
                           Total  Weighted      Neg      Max       Max     Max  
Operation                   Area   Slacks      Slack    Trans      Cap   Fanout 
 init_delay                54340        0         0         0        0        0

           Trick     Calls     Accepts   Attempts    Time(secs) 
-----------------------------------------------------------
       crit_upsz         0  (        0 /        0 )  0.00
    plc_bal_star         0  (        0 /        0 )  0.00
     drc_buftimb         0  (        0 /        0 )  0.00
          plc_st         0  (        0 /        0 )  0.00
    plc_st_fence         0  (        0 /        0 )  0.00
        plc_star         0  (        0 /        0 )  0.00
      plc_laf_st         0  (        0 /        0 )  0.00
 plc_laf_st_fence         0  (        0 /        0 )  0.00
     drc_buftims         0  (        0 /        0 )  0.00
   plc_laf_lo_st         0  (        0 /        0 )  0.00
       plc_lo_st         0  (        0 /        0 )  0.00
            fopt         0  (        0 /        0 )  0.00
         ao_bufs         0  (        0 /        0 )  0.00
       crit_dnsz         0  (        0 /        0 )  0.00
             dup         0  (        0 /        0 )  0.00
            fopt         0  (        0 /        0 )  0.00
        setup_dn         0  (        0 /        0 )  0.00
         buf2inv         0  (        0 /        0 )  0.00
        mb_split         0  (        0 /        0 )  0.00
             exp         0  (        0 /        0 )  0.00
       gate_deco         0  (        0 /        0 )  0.00
       gcomp_tim         0  (        0 /        0 )  0.00
  inv_pair_2_buf         0  (        0 /        0 )  0.00

 init_drc                  54340        0         0         0        0        0

           Trick     Calls     Accepts   Attempts    Time(secs) 
-----------------------------------------------------------
          plc_st         0  (        0 /        0 )  0.00
        plc_star         0  (        0 /        0 )  0.00
        drc_bufs         0  (        0 /        0 )  0.00
        drc_fopt         0  (        0 /        0 )  0.00
        drc_bufb         0  (        0 /        0 )  0.00
      simple_buf         0  (        0 /        0 )  0.00
             dup         0  (        0 /        0 )  0.00
       crit_dnsz         0  (        0 /        0 )  0.00
       crit_upsz         0  (        0 /        0 )  0.00


           Trick     Calls     Accepts   Attempts    Time(secs) 
-----------------------------------------------------------
          plc_st         0  (        0 /        0 )  0.00
        plc_star         0  (        0 /        0 )  0.00
      drc_buf_sp         0  (        0 /        0 )  0.00
        drc_bufs         0  (        0 /        0 )  0.00
        drc_fopt         0  (        0 /        0 )  0.00
        drc_bufb         0  (        0 /        0 )  0.00
      simple_buf         0  (        0 /        0 )  0.00
             dup         0  (        0 /        0 )  0.00
       crit_dnsz         0  (        0 /        0 )  0.00
       crit_upsz         0  (        0 /        0 )  0.00


           Trick     Calls     Accepts   Attempts    Time(secs) 
-----------------------------------------------------------
          plc_st         0  (        0 /        0 )  0.00
        plc_star         0  (        0 /        0 )  0.00
      drc_buf_sp         0  (        0 /        0 )  0.00
        drc_bufs         0  (        0 /        0 )  0.00
        drc_fopt         0  (        0 /        0 )  0.00
        drc_bufb         0  (        0 /        0 )  0.00
             dup         0  (        0 /        0 )  0.00
       crit_dnsz         0  (        0 /        0 )  0.00
       crit_upsz         0  (        0 /        0 )  0.00

 init_tns                  54340        0         0         0        0        0

           Trick     Calls     Accepts   Attempts    Time(secs) 
-----------------------------------------------------------
    plc_bal_star         0  (        0 /        0 )  0.00
     drc_buftimb         0  (        0 /        0 )  0.00
     drc_buftims         0  (        0 /        0 )  0.00
       crit_upsz         0  (        0 /        0 )  0.00
   plc_laf_lo_st         0  (        0 /        0 )  0.00
       plc_lo_st         0  (        0 /        0 )  0.00
            fopt         0  (        0 /        0 )  0.00
       crit_dnsz         0  (        0 /        0 )  0.00
             dup         0  (        0 /        0 )  0.00
        setup_dn         0  (        0 /        0 )  0.00
         buf2inv         0  (        0 /        0 )  0.00
        mb_split         0  (        0 /        0 )  0.00

 init_area                 54340        0         0         0        0        0
 rem_inv                   54317        0         0         0        0        0
 rem_inv_qb                54311        0         0         0        0        0
 io_phase                  54289        0         0         0        0        0
 gate_comp                 54283        0         0         0        0        0

           Trick     Calls     Accepts   Attempts    Time(secs) 
-----------------------------------------------------------
           undup         0  (        0 /        0 )  0.00
         rem_buf        18  (        0 /        0 )  0.03
         rem_inv        67  (        3 /        3 )  0.11
        merge_bi        46  (        0 /        0 )  0.07
      rem_inv_qb         1  (        1 /        1 )  0.00
        io_phase         5  (        3 /        3 )  0.01
       gate_comp         3  (        1 /        1 )  0.04
       gcomp_mog         0  (        0 /        0 )  0.03
       glob_area        50  (        0 /       50 )  0.01
       area_down         8  (        0 /        0 )  0.02
      size_n_buf         0  (        0 /        0 )  0.02
  gate_deco_area         0  (        0 /        0 )  0.00
         rem_buf        18  (        0 /        0 )  0.03
         rem_inv        62  (        0 /        0 )  0.10
        merge_bi        46  (        0 /        0 )  0.07
      rem_inv_qb         0  (        0 /        0 )  0.00

 
Incremental optimization status
===============================
                                   Group   
                                  Tot Wrst     Total - - - - DRC Totals - - - -
                           Total  Weighted      Neg      Max       Max     Max  
Operation                   Area   Slacks      Slack    Trans      Cap   Fanout 
 init_delay                54283        0         0         0        0        0

           Trick     Calls     Accepts   Attempts    Time(secs) 
-----------------------------------------------------------
       crit_upsz         0  (        0 /        0 )  0.00
    plc_bal_star         0  (        0 /        0 )  0.00
     drc_buftimb         0  (        0 /        0 )  0.00
          plc_st         0  (        0 /        0 )  0.00
    plc_st_fence         0  (        0 /        0 )  0.00
        plc_star         0  (        0 /        0 )  0.00
      plc_laf_st         0  (        0 /        0 )  0.00
 plc_laf_st_fence         0  (        0 /        0 )  0.00
     drc_buftims         0  (        0 /        0 )  0.00
   plc_laf_lo_st         0  (        0 /        0 )  0.00
       plc_lo_st         0  (        0 /        0 )  0.00
            fopt         0  (        0 /        0 )  0.00
         ao_bufs         0  (        0 /        0 )  0.00
       crit_dnsz         0  (        0 /        0 )  0.00
             dup         0  (        0 /        0 )  0.00
            fopt         0  (        0 /        0 )  0.00
        setup_dn         0  (        0 /        0 )  0.00
         buf2inv         0  (        0 /        0 )  0.00
        mb_split         0  (        0 /        0 )  0.00
             exp         0  (        0 /        0 )  0.00
       gate_deco         0  (        0 /        0 )  0.00
       gcomp_tim         0  (        0 /        0 )  0.00
  inv_pair_2_buf         0  (        0 /        0 )  0.00

 init_drc                  54283        0         0         0        0        0

           Trick     Calls     Accepts   Attempts    Time(secs) 
-----------------------------------------------------------
          plc_st         0  (        0 /        0 )  0.00
        plc_star         0  (        0 /        0 )  0.00
        drc_bufs         0  (        0 /        0 )  0.00
        drc_fopt         0  (        0 /        0 )  0.00
        drc_bufb         0  (        0 /        0 )  0.00
      simple_buf         0  (        0 /        0 )  0.00
             dup         0  (        0 /        0 )  0.00
       crit_dnsz         0  (        0 /        0 )  0.00
       crit_upsz         0  (        0 /        0 )  0.00


           Trick     Calls     Accepts   Attempts    Time(secs) 
-----------------------------------------------------------
          plc_st         0  (        0 /        0 )  0.00
        plc_star         0  (        0 /        0 )  0.00
        drc_bufs         0  (        0 /        0 )  0.00
        drc_fopt         0  (        0 /        0 )  0.00
        drc_bufb         0  (        0 /        0 )  0.00
      simple_buf         0  (        0 /        0 )  0.00
             dup         0  (        0 /        0 )  0.00
       crit_dnsz         0  (        0 /        0 )  0.00
       crit_upsz         0  (        0 /        0 )  0.00


           Trick     Calls     Accepts   Attempts    Time(secs) 
-----------------------------------------------------------
          plc_st         0  (        0 /        0 )  0.00
        plc_star         0  (        0 /        0 )  0.00
        drc_bufs         0  (        0 /        0 )  0.00
        drc_fopt         0  (        0 /        0 )  0.00
        drc_bufb         0  (        0 /        0 )  0.00
             dup         0  (        0 /        0 )  0.00
       crit_dnsz         0  (        0 /        0 )  0.00
       crit_upsz         0  (        0 /        0 )  0.00

 init_area                 54283        0         0         0        0        0

           Trick     Calls     Accepts   Attempts    Time(secs) 
-----------------------------------------------------------
           undup         0  (        0 /        0 )  0.00
         rem_buf        18  (        0 /        0 )  0.03
         rem_inv        62  (        0 /        0 )  0.10
        merge_bi        46  (        0 /        0 )  0.07
      rem_inv_qb         0  (        0 /        0 )  0.00
        io_phase         2  (        0 /        0 )  0.00
       gate_comp         2  (        0 /        0 )  0.04
       gcomp_mog         0  (        0 /        0 )  0.03
       glob_area        50  (        0 /       50 )  0.01
       area_down         8  (        0 /        0 )  0.02
      size_n_buf         0  (        0 /        0 )  0.01
  gate_deco_area         0  (        0 /        0 )  0.00

==================================
Stage : incr_opt 
==================================
  =================
   Message Summary
  =================
---------------------------------------------------------------------------------------
|   Id   |  Sev  |Count|                         Message Text                         |
---------------------------------------------------------------------------------------
|CFM-1   |Info   |    1|Wrote dofile.                                                 |
|CFM-5   |Info   |    1|Wrote formal verification information.                        |
|PA-7    |Info   |    4|Resetting power analysis results.                             |
|        |       |     |All computed switching activities are removed.                |
|SYNTH-5 |Info   |    1|Done mapping.                                                 |
|SYNTH-7 |Info   |    1|Incrementally optimizing.                                     |
|SYNTH-33|Warning|    1|The selected flow setting will be removed in a future release.|
|        |       |     |Contact Cadence support to understand current flows.          |
---------------------------------------------------------------------------------------
Info    : Done incrementally optimizing. [SYNTH-8]
        : Done incrementally optimizing 'topPLLDigital'.
        Applying wireload models.
        Computing net loads.
Start checking always on instances.
Done checking always on instances.
      flow.cputime  flow.realtime  timing.setup.tns  timing.setup.wns  snapshot
UM:*                                                                   syn_opt
@file(syn-generic-vlsiF25_v2.tcl) 98: 	
@file(syn-generic-vlsiF25_v2.tcl) 99: 	puts "Runtime & Memory after 'syn_generic'"
Runtime & Memory after 'syn_generic'
@file(syn-generic-vlsiF25_v2.tcl) 100: 	time_info GENERIC
stamp 'GENERIC' being created for table 'default'

  Total Time (Wall) |  Stage Time (Wall)  |   % (Wall)   |    Date - Time     |  Memory   | Stage
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:01(00:00:00) |  00:00:00(00:00:00) |   0.0(  0.0) |    9:01:12 (Sep13) |  452.0 MB | init
--------------------+---------------------+--------------+--------------------+-----------+----------------------
 00:00:56(00:01:12) |  00:00:55(00:01:12) | 100.0(100.0) |    9:02:24 (Sep13) |   1.23 GB | GENERIC
--------------------+---------------------+--------------+--------------------+-----------+----------------------
Number of threads: 8 * 1   (id: default, time_info v1.57)
Info: (*N*) indicates data that was populated from previously saved time_info database
Info: CPU time includes time of parent + longest thread
@file(syn-generic-vlsiF25_v2.tcl) 101: 	write_reports -directory $_REPORTS_PATH -tag generic
        Computing net loads.
Info    : Joules engine is used. [RPT-16]
        : Joules engine is being used for the command report_gates -power.
        Applying wireload models.
        Computing net loads.
        Tracing clock networks.
        Levelizing the circuit.
        Computing delays.
        Computing arrivals and requireds.
Info   : ACTP-0001 [ACTPInfo] Activity propagation started for stim#0 netlist
       : topPLLDigital
Info   : ACTP-0009 [ACTPInfo] Activity Propagation Progress Report :   0%   1%   2%   3%   4%   5%   6%   7%   8%   9%  10%  11%  12%  13%  14%  15%  16%  17%  18%  19%  20%  21%  22%  23%  24%  25%  26%  27%  28%  29%  30%  31%  32%  33%  34%  35%  36%  37%  38%  39%  40%  41%  42%  43%  44%  45%  46%  47%  48%  49%  50%  51%  52%  53%  54%  55%  56%  57%  58%  59%  60%  61%  62%  63%  64%  65%  66%  67%  68%  69%  70%  71%  72%  73%  74%  75%  76%  77%  78%  79%  80%  81%  82%  83%  84%  85%  86%  87%  88%  89%  90%  91%  92%  93%  94%  95%  96%  97%  98%  99% 100%
Info   : ACTP-0001 Activity propagation ended for stim#0
Info   : PWRA-0001 [PwrInfo] compute_power effective options 
       : -mode : vectorless
       : -skip_propagation : 1
       : -frequency_scaling_factor : 1.0
       : -use_clock_freq : stim
       : -stim :/stim#0
       : -fromGenus : 1
Info   : ACTP-0001 Timing initialization started
Info   : ACTP-0001 Timing initialization ended
Info   : PWRA-0002 [PwrInfo] Skipping activity propagation due to -skip_ap
       : option....
Warning: PWRA-0302 [PwrWarn] Frequency scaling is not applicable for vectorless
       : flow. Ignoring frequency scaling.
Warning: PWRA-0304 [PwrWarn] -stim option is not applicable with vectorless mode
       : of power analysis, ignored this option.
Info   : PWRA-0002 Started 'vectorless' power computation.
        Computing arrivals and requireds.
Info   : PWRA-0009 [PwrInfo] Power Computation Progress Report :   0%   1%   2%   3%   4%   5%   6%   7%   8%   9%  10%  11%  12%  13%  14%  15%  16%  17%  18%  19%  20%  21%  22%  23%  24%  25%  26%  27%  28%  29%  30%  31%  32%  33%  34%  35%  36%  37%  38%  39%  40%  41%  42%  43%  44%  45%  46%  47%  48%  49%  50%  51%  52%  53%  54%  55%  56%  57%  58%  59%  60%  61%  62%  63%  64%  65%  66%  67%  68%  69%  70%  71%  72%  73%  74%  75%  76%  77%  78%  79%  80%  81%  82%  83%  84%  85%  86%  87%  88%  89%  90%  91%  92%  93%  94%  95%  96%  97%  98%  99% 100%
Info   : PWRA-0002 Finished power computation.
Info   : PWRA-0007 [PwrInfo] Completed successfully.
       : Info=6, Warn=2, Error=0, Fatal=0
Warning : A required object parameter could not be found. [TUI-78]
        : An object named "" could not be found for attribute 'name'.
        : Check if a previous get_db or find returned an empty string.
Warning : A required object parameter could not be found. [TUI-78]
        : An object named "" could not be found for attribute 'analysis_view'.


Working Directory = /data/projects/vlsi_fall2025/jswalling/synthesis/generic
QoS Summary for topPLLDigital
================================================================================
Metric                          generic        
================================================================================
Slack (ps):                     4,576
  R2R (ps):                     4,576
  I2R (ps):                  no_value
  R2O (ps):                    37,701
  I2O (ps):                  no_value
  CG  (ps):                  no_value
TNS (ps):                           0
  R2R (ps):                         0
  I2R (ps):                  no_value
  R2O (ps):                         0
  I2O (ps):                  no_value
  CG  (ps):                  no_value
Failing Paths:                      0
Cell Area:                     54,283
Total Cell Area:               54,283
Leaf Instances:                 2,072
Total Instances:                2,072
Utilization (%):                 0.00
Tot. Net Length (um):        no_value
Avg. Net Length (um):        no_value
Route Overflow H (%):        no_value
Route Overflow V (%):        no_value
MBCI(%) (bits/gate) :            0.00
Norm Cong Hotspot Area:
  Max Cong:                  no_value
  Tot Cong:                  no_value
================================================================================
CPU  Runtime (h:m:s):        00:01:04
Real Runtime (h:m:s):        00:01:12
CPU  Elapsed (h:m:s):        00:01:06
Real Elapsed (h:m:s):        00:01:12
Memory (MB):                  1818.40
================================================================================
================================================================================
Flow Settings:
================================================================================
Total Runtime (h:m:s): 00:01:12
Total Memory (MB):     1826.41
Executable Version:    23.14-s090_1
================================================================================
Total Cell Area =  Cell Area + Physical Cell Area
Total Instances =  Leaf Instances + Physical Instances




@file(syn-generic-vlsiF25_v2.tcl) 102: 	write_db ${_OUTPUTS_PATH}/${DESIGN}_generic.db
Finished exporting design database to file 'OUTPUT/outputs_23.14-s090_1/topPLLDigital_generic.db' for 'topPLLDigital' (command execution time mm:ss cpu = 00:00, real = 00:01).
@file(syn-generic-vlsiF25_v2.tcl) 103: 	write_hdl > ${DESIGN}_generic_struct.v	
@file(syn-generic-vlsiF25_v2.tcl) 104: 	write_sdf > ${DESIGN}_generic.sdf
Warning : Default value for an option has changed in this release. [WSDF-104]
        : Default value for -setuphold has changed from split to merge_always. Specify '-setuphold split' to preserve the behavior of the previous release.
        : Specify the option explicitly.
Warning : Default value for an option has changed in this release. [WSDF-104]
        : Default value for -recrem has changed from split to merge_always. Specify '-recrem split' to preserve the behavior of the previous release.
@file(syn-generic-vlsiF25_v2.tcl) 105:         write_sdc > ${DESIGN}_generic_struct.sdc        
Finished SDC export (command execution time mm:ss (real) = 00:00).
@file(syn-generic-vlsiF25_v2.tcl) 106: 	puts "End syn_opt"
End syn_opt
#@ End verbose source ../scripts/syn-generic-vlsiF25_v2.tcl
@genus:root: 1> ls
OUTPUT
fv
genus.cmd
genus.cmd1
genus.cmd2
genus.cmd3
genus.cmd4
genus.cmd5
genus.log
genus.log1
genus.log2
genus.log3
genus.log4
genus.log5
log
topPLLDigital_generic.sdf
topPLLDigital_generic_struct.sdc
topPLLDigital_generic_struct.v
@genus:root: 2> 
@genus:root: 2> report_gates
============================================================
  Generated by:           Genus(TM) Synthesis Solution 23.14-s090_1
  Generated on:           Sep 13 2025  09:02:59 am
  Module:                 topPLLDigital
  Technology libraries:   sky130_tt_1.8_25 1.0
                          sky130_tt_1.8_25 1.0
  Operating conditions:   tt_1.8_25 (balanced_tree)
  Wireload mode:          enclosed
  Area mode:              timing library
============================================================

                                
   Gate    Instances    Area          Library       
----------------------------------------------------
ADDFX1            48   1554.000    sky130_tt_1.8_25 
ADDHX1             5    104.740    sky130_tt_1.8_25 
AND2X1            12    114.264    sky130_tt_1.8_25 
AND2X2            27    257.094    sky130_tt_1.8_25 
AND3X2             8     91.408    sky130_tt_1.8_25 
AND4X2             8    106.640    sky130_tt_1.8_25 
AOI211X1           5     57.130    sky130_tt_1.8_25 
AOI21X1           10     95.220    sky130_tt_1.8_25 
AOI21X2            1     15.235    sky130_tt_1.8_25 
AOI221X1          35    466.585    sky130_tt_1.8_25 
AOI222X1         106   1213.064    sky130_tt_1.8_25 
AOI22X1          204   2330.904    sky130_tt_1.8_25 
BUFX16             4    152.352    sky130_tt_1.8_25 
BUFX2             14    106.652    sky130_tt_1.8_25 
CLKAND2X2         17    161.874    sky130_tt_1.8_25 
CLKINVX1          16     91.408    sky130_tt_1.8_25 
CLKINVX2         113    645.569    sky130_tt_1.8_25 
CLKMX2X2           1     15.235    sky130_tt_1.8_25 
CLKXOR2X1         20    266.620    sky130_tt_1.8_25 
DFFRX1            46   1752.048    sky130_tt_1.8_25 
DFFX1             75   2570.925    sky130_tt_1.8_25 
INVX1             64    365.632    sky130_tt_1.8_25 
INVX16             2     64.750    sky130_tt_1.8_25 
INVX2             14     79.982    sky130_tt_1.8_25 
MX2X1              2     30.470    sky130_tt_1.8_25 
NAND2X1          145   1104.610    sky130_tt_1.8_25 
NAND3X1           12    114.264    sky130_tt_1.8_25 
NAND4X1           43    491.318    sky130_tt_1.8_25 
NOR2X1            77    586.586    sky130_tt_1.8_25 
NOR2X2             2     22.852    sky130_tt_1.8_25 
NOR3X1             7     66.654    sky130_tt_1.8_25 
NOR4X1             1     11.426    sky130_tt_1.8_25 
OAI211X1           2     22.840    sky130_tt_1.8_25 
OAI21X1           32    304.704    sky130_tt_1.8_25 
OAI221X1           2     26.662    sky130_tt_1.8_25 
OAI222X1           1     15.235    sky130_tt_1.8_25 
OAI22X1            9    102.834    sky130_tt_1.8_25 
OR2X1             19    180.918    sky130_tt_1.8_25 
OR2X2              2     19.044    sky130_tt_1.8_25 
OR3X1              1     11.426    sky130_tt_1.8_25 
SDFFRX1          306  14568.660    sky130_tt_1.8_25 
SDFFX1           542  23740.141    sky130_tt_1.8_25 
XNOR2X1           12    182.820    sky130_tt_1.8_25 
----------------------------------------------------
total           2072  54282.795                     


                                          
     Type      Instances    Area   Area % 
------------------------------------------
sequential           969 42631.775   78.5 
inverter             209  1247.341    2.3 
buffer                18   259.004    0.5 
logic                876 10144.676   18.7 
physical_cells         0     0.000    0.0 
------------------------------------------
total               2072 54282.795  100.0 

@genus:root: 3> exit

Lic Summary:
[09:03:15.521259] Cdslmd servers: license
[09:03:15.521281] Feature usage summary:
[09:03:15.521281] Genus_Synthesis
[09:03:15.521283] Genus_Low_Power_Opt

Normal exit.