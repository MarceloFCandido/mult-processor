onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /multiplexador/controle
add wave -noupdate -radix unsigned /multiplexador/saida
add wave -noupdate -radix unsigned /multiplexador/reg0
add wave -noupdate -radix unsigned /multiplexador/reg1
add wave -noupdate -radix unsigned /multiplexador/reg2
add wave -noupdate -radix unsigned /multiplexador/reg3
add wave -noupdate -radix unsigned /multiplexador/reg4
add wave -noupdate -radix unsigned /multiplexador/reg5
add wave -noupdate -radix unsigned /multiplexador/reg6
add wave -noupdate -radix unsigned /multiplexador/reg7
add wave -noupdate -radix unsigned /multiplexador/Dado
add wave -noupdate -radix unsigned /multiplexador/G
add wave -noupdate -radix binary /multiplexador/controlReg
add wave -noupdate /multiplexador/Gout
add wave -noupdate /multiplexador/Din
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {890 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 181
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
WaveRestoreZoom {0 ps} {1050 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0000000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg0 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg1 
wave create -driver freeze -pattern counter -startvalue 0000000000000001 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg1 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000000000010 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg2 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000000000011 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg3 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000000000100 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg4 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000000000101 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg5 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000000000110 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg6 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000000000111 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg7 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000000001000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/Dado 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000000001001 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/G 
WaveExpandAll -1
wave create -driver freeze -pattern repeater -initialvalue 10000000 -period 50ps -sequence { 01000000 00100000 00010000 00001000 00000100 00000010 00000001 00000000 00000000  } -repeat forever -range 7 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/controlReg 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/Gout 
wave modify -driver freeze -pattern constant -value 1 -starttime 350ps -endtime 400ps Edit:/multiplexador/Gout 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/Din 
wave modify -driver freeze -pattern constant -value 1 -starttime 400ps -endtime 450ps Edit:/multiplexador/Din 
WaveCollapseAll -1
wave clipboard restore
