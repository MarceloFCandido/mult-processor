onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /counter/CLK
add wave -noupdate /counter/CLR
add wave -noupdate /counter/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
wave create -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/counter/CLK 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/counter/CLR 
wave modify -driver freeze -pattern constant -value 1 -starttime 600ps -endtime 610ps Edit:/counter/CLR 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/counter/CLK 
wave modify -driver freeze -pattern constant -value 0 -starttime 600ps -endtime 610ps Edit:/counter/CLR 
wave modify -driver freeze -pattern constant -value 1 -starttime 450ps -endtime 460ps Edit:/counter/CLR 
WaveCollapseAll -1
wave clipboard restore
