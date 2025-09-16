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

	set RELEASE [lindex [get_db program_version] end]
	set _OUTPUTS_PATH OUTPUT/outputs_${RELEASE}
	set _REPORTS_PATH OUTPUT/reports_${RELEASE}
	set _LOG_PATH OUTPUT/logs_${RELEASE}

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

	set_db init_lib_search_path {. /data/PDK/sky130a/stdcells/sky130_scl_9T_tech/ \
		                       /data/PDK/sky130a/stdcells/sky130_scl_9T/ \
		                       /data/PDK/sky130a/stdcells/sky130_scl_9T_HS/ \
		                       /data/PDK/sky130a/stdcells/sky130_scl_9T_LP/}
	set_db script_search_path { . }
	set_db init_hdl_search_path {. ../rtl}

	set_db max_cpus_per_server 8

	set_db syn_generic_effort $SYN_EFF

	set_db information_level 9
	set_db invs_temp_dir ${_OUTPUTS_PATH}/invs_tmp_dir

##################################################################
## Library and MMMC Settings
##################################################################
	## Read in the MMMC setup
#	read_mmmc ../scripts/mmmc-lnx.tcl

#	read_physical -lefs { \
#	  /data/PDK/sky130a/stdcells/sky130_scl_9T_tech/lef/sky130_scl_9T.tlef \
#	  /data/PDK/sky130a/stdcells/sky130_scl_9T/lef/sky130_scl_9T.lef \
#	  /data/PDK/sky130a/stdcells/sky130_scl_9T_HS/lef/sky130_scl_9T_HS.lef \
#	  /data/PDK/sky130a/stdcells/sky130_scl_9T_LP/lef/sky130_scl_9T_LP.lef
#	}

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

	set init_pwr_net {VDD}
	set init_gnd_net {VSS}
	init_design
	#globalNetConnect VSS -type tielo -pin VSS -all verbose
	#globalNetConnect VSS -type pgpin -pin VSS -all verbose
	#globalNetConnect VDD -type tiehi -pin VDD -all verbose
	#globalNetConnect VDD -type pgpin -pin VDD -all verbose
	time_info init_design
	check_design -unresolved
	check_timing_intent

	report_ple > ${_REPORTS_PATH}/ple.rpt

##################################################################
## Initial Synthesis (To estimate placement area
##################################################################
	syn_generic
	puts "Runtime & Memory after 'syn_generic'"
	time_info GENERIC
	write_reports -directory $_REPORTS_PATH -tag generic
	write_db ${_OUTPUTS_PATH}/${DESIGN}_generic.db
	write_sdf > ${DESIGN}_generic.sdf
	write_hdl > ${DESIGN}_generic_struct.v	
        
##################################################################
## Write Reports
##################################################################
	report_messages > $_REPORTS_PATH/${DESIGN}_generic_messages.rpt
	report_gates > $_REPORTS_PATH/${DESIGN}_generic_gates.rpt
	report_power > $_REPORTS_PATH/${DESIGN}_generic_power.rpt
	write_reports -directory $_REPORTS_PATH -tag final

	puts "End syn_opt"
