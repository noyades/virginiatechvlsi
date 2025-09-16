create_library_set -name wcl_slow -timing {
  /data/PDK/sky130a/stdcells/sky130_scl_9T/lib/sky130_ss_1.62_125_nldm.lib
}

create_library_set -name wcl_fast -timing {
  /data/PDK/sky130a/stdcells/sky130_scl_9T/lib/sky130_ff_1.98_0_nldm.lib
}

create_library_set -name wcl_typical -timing {
  /data/PDK/sky130a/stdcells/sky130_scl_9T/lib/sky130_tt_1.8_25_nldm.lib
}

create_opcond -name op_cond_wcl_slow    -process 1 -voltage 0.81 -temperature 125
create_opcond -name op_cond_wcl_fast    -process 1 -voltage 0.99 -temperature -40
create_opcond -name op_cond_wcl_typical -process 1 -voltage 0.90 -temperature 25

create_timing_condition -name timing_cond_wcl_slow -opcond op_cond_wcl_slow -library_sets { wcl_slow }
create_timing_condition -name timing_cond_wcl_fast -opcond op_cond_wcl_fast -library_sets { wcl_fast }
create_timing_condition -name timing_cond_wcl_typical -opcond op_cond_wcl_typical -library_sets { wcl_typical }

create_rc_corner -name worst -temperature 125 -qrc_tech /data/PDK/sky130a/release/quantus/extraction/typical/qrcTechFile

create_rc_corner -name best -temperature 0 -qrc_tech /data/PDK/sky130a/release/quantus/extraction/typical/qrcTechFile

create_rc_corner -name typical -temperature 25 -qrc_tech /data/PDK/sky130a/release/quantus/extraction/typical/qrcTechFile

#create_rc_corner -name rc_corner -temperature 25 -qrc_tech /data/PDK/globalFoundries/22FDX-EXT/release/PEX/QRC/9M_2Mx_5Cx_1Jx_1Ox_LBthick/nominal/qrcTechFile

create_delay_corner -name delay_corner_wcl_slow -early_timing_condition timing_cond_wcl_slow \
                    -late_timing_condition timing_cond_wcl_slow -early_rc_corner worst \
                    -late_rc_corner worst

create_delay_corner -name delay_corner_wcl_fast -early_timing_condition timing_cond_wcl_fast \
                    -late_timing_condition timing_cond_wcl_fast -early_rc_corner best \
                    -late_rc_corner best

create_delay_corner -name delay_corner_wcl_typical -early_timing_condition timing_cond_wcl_typical \
                    -late_timing_condition timing_cond_wcl_typical -early_rc_corner typical \
                    -late_rc_corner typical

create_constraint_mode -name functional_wcl_slow -sdc_files { \
  ../constraints/topPLLDigital.sdc
}

create_constraint_mode -name functional_wcl_fast -sdc_files { \
  ../constraints/topPLLDigital.sdc
}

create_constraint_mode -name functional_wcl_typical -sdc_files { \
  ../constraints/topPLLDigital.sdc
}

create_analysis_view -name view_wcl_slow -constraint_mode functional_wcl_typical -delay_corner delay_corner_wcl_slow
create_analysis_view -name view_wcl_fast -constraint_mode functional_wcl_typical -delay_corner delay_corner_wcl_fast
create_analysis_view -name view_wcl_typical -constraint_mode functional_wcl_typical -delay_corner delay_corner_wcl_typical

set_analysis_view -setup {view_wcl_slow view_wcl_fast view_wcl_typical} 
#                  -hold view_wcl_fast \
#                  -leakage view_wcl_typical \
#                  -dynamic view_wcl_typical
