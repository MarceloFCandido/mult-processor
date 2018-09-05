onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /reg16bits/in
add wave -noupdate /reg16bits/clock
add wave -noupdate /reg16bits/write
add wave -noupdate -radix unsigned /reg16bits/out
TreeUpdate [SetDefaultTree]
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
WaveRestoreZoom {0 ps} {1155 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0000000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/reg16bits/in 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/reg16bits/clock 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/reg16bits/write 
WaveCollapseAll -1
wave clipboard restore
