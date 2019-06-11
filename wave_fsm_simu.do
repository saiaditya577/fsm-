onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fsm_module_test/clk
add wave -noupdate /fsm_module_test/EN
add wave -noupdate /fsm_module_test/DIRECTION
add wave -noupdate /fsm_module_test/START
add wave -noupdate /fsm_module_test/FAULT
add wave -noupdate /fsm_module_test/EN_RELEASE
add wave -noupdate /fsm_module_test/EN_INSERT
add wave -noupdate /fsm_module_test/EN_RESET
add wave -noupdate /fsm_module_test/EN_ALARM
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 177
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {2414838 ps}
