onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ASreg/clock
add wave -noupdate /ASreg/ctrl
add wave -noupdate /ASreg/write1
add wave -noupdate /ASreg/write2
add wave -noupdate /ASreg/write3
add wave -noupdate /ASreg/write4
add wave -noupdate /ASreg/in1
add wave -noupdate /ASreg/in2
add wave -noupdate /ASreg/out1
add wave -noupdate /ASreg/out2
add wave -noupdate /ASreg/in3
add wave -noupdate /ASreg/out3
add wave -noupdate /ASreg/out4
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {152 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {1103 ps}
view wave 
wave clipboard store
wave create -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/ASreg/clock 
wave create -pattern constant -value 000 -range 2 0 -starttime 0ps -endtime 1000ps sim:/ASreg/ctrl 
WaveExpandAll -1
wave create -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/ASreg/write1 
wave create -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/ASreg/write2 
wave create -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/ASreg/write3 
wave create -driver freeze -pattern constant -value 10 -range 15 0 -starttime 0ps -endtime 1000ps sim:/ASreg/in1 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 10 -range 15 0 -starttime 0ps -endtime 1000ps sim:/ASreg/in2 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 100ps Edit:/ASreg/write1 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 100ps Edit:/ASreg/write1 
wave modify -driver freeze -pattern constant -value 1 -starttime 100ps -endtime 200ps Edit:/ASreg/write2 
wave modify -driver freeze -pattern constant -value 1 -starttime 100ps -endtime 200ps Edit:/ASreg/write3 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ps -endtime 200ps Edit:/ASreg/write3 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ps -endtime 300ps Edit:/ASreg/write3 
wave modify -driver freeze -pattern constant -value 0 -starttime 200ps -endtime 300ps Edit:/ASreg/write3 
wave modify -driver freeze -pattern constant -value 1 -starttime 150ps -endtime 250ps Edit:/ASreg/write3 
wave modify -driver freeze -pattern constant -value 0 -starttime 150ps -endtime 250ps Edit:/ASreg/write3 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ps -endtime 300ps Edit:/ASreg/write3 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/ASreg/write4 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ps -endtime 300ps Edit:/ASreg/write4 
wave modify -driver freeze -pattern constant -value 1 -starttime 100ps -endtime 200ps Edit:/ASreg/write3 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 100ps Edit:/ASreg/write1 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 100ps Edit:/ASreg/write1 
wave modify -driver freeze -pattern constant -value 1 -starttime 100ps -endtime 200ps Edit:/ASreg/write2 
wave modify -driver freeze -pattern constant -value 1 -starttime 100ps -endtime 200ps Edit:/ASreg/write3 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ps -endtime 200ps Edit:/ASreg/write3 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ps -endtime 300ps Edit:/ASreg/write3 
wave modify -driver freeze -pattern constant -value 0 -starttime 200ps -endtime 300ps Edit:/ASreg/write3 
wave modify -driver freeze -pattern constant -value 1 -starttime 150ps -endtime 250ps Edit:/ASreg/write3 
wave modify -driver freeze -pattern constant -value 0 -starttime 150ps -endtime 250ps Edit:/ASreg/write3 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ps -endtime 300ps Edit:/ASreg/write3 
WaveCollapseAll -1
wave clipboard restore
