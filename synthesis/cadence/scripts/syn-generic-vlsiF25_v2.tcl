##################################################################
## System Info
##################################################################
	if {[file exists /proc/cpuinfo]} {
	  sh grep "model name" /proc/cpuinfo
	  sh grep "cpu MHz"    /proc/cpuinfo
	}

	puts "Hostname : [info hostname]"

##################################################################
## Global Variables and Settings (Report Paths, Effort, etc.)
##################################################################
	set DESIGN topPLLDigital
	set SYN_EFF medium

	set_db log_file log/${DESIGN}_genus.log
	set_db log_file log/${DESIGN}_genus.cmd
	
	set_db init_hdl_search_path {. ../rtl}
	set_db init_lib_search_path {. /data/PDK/sky130a/stdcells/sky130_scl_9T_tech/lib/ \
		                       /data/PDK/sky130a/stdcells/sky130_scl_9T/lib/ \
		                       /data/PDK/sky130a/stdcells/sky130_scl_9T_HS/lib/ \
		                       /data/PDK/sky130a/stdcells/sky130_scl_9T_LP//lib/}
	
	set target_library "sky130_tt_1.8_25_nldm"
	read_libs ${target_library}.lib
		
	set RELEASE [lindex [get_db program_version] end]
	set _OUTPUTS_PATH OUTPUT/outputs_${RELEASE}
	set _REPORTS_PATH OUTPUT/reports_${RELEASE}
	set _LOG_PATH OUTPUT/logs_${RELEASE}
	set_db information_level 9
	set_db invs_temp_dir ${_OUTPUTS_PATH}/invs_tmp_dir
	
	if {![file exists ${_OUTPUTS_PATH}]} {
	  file mkdir ${_OUTPUTS_PATH}
	  puts "Creating directory ${_OUTPUTS_PATH}"
	}

	if {![file exists ${_REPORTS_PATH}]} {
	  file mkdir ${_REPORTS_PATH}
	  puts "Creating directory ${_REPORTS_PATH}"
	}

	if {![file exists ${_LOG_PATH}]} {
	  file mkdir ${_LOG_PATH}
	  puts "Creating directory ${_REPORTS_PATH}"
	}

        set write_sdf true
	set rtlDir ../rtl

	set_db script_search_path { . }

	set_db max_cpus_per_server 8

	set_db syn_generic_effort $SYN_EFF
	set_db syn_map_effort $SYN_EFF
	set_db syn_opt_effort $SYN_EFF
	
##################################################################
## Read in Design and Initialize it
##################################################################
	puts "Now load RTL LIST"
	set rtlList "\
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
	#suspend

	read_hdl $rtlList
	elaborate $DESIGN

        suspend 

        read_sdc ../constraints/${DESIGN}.sdc
        
        read_power_intent ../scripts/upf
	apply_power_intent
	commit_power_intent
	#set init_pwr_net {VDD}
	#set init_gnd_net {VSS}

##################################################################
## Initial Synthesis (To estimate placement area
##################################################################
	syn_generic
	syn_map
	syn_opt
	
	puts "Runtime & Memory after 'syn_generic'"
	time_info GENERIC
	write_reports -directory $_REPORTS_PATH -tag generic
	write_db ${_OUTPUTS_PATH}/${DESIGN}_generic.db
	write_hdl > ${DESIGN}_generic_struct.v	
	write_sdf > ${DESIGN}_generic.sdf
        write_sdc > ${DESIGN}_generic_struct.sdc        
	puts "End syn_opt"
