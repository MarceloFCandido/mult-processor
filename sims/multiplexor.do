onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary -childformat {{{/multiplexador/controle[9]} -radix binary} {{/multiplexador/controle[8]} -radix binary} {{/multiplexador/controle[7]} -radix binary} {{/multiplexador/controle[6]} -radix binary} {{/multiplexador/controle[5]} -radix binary} {{/multiplexador/controle[4]} -radix binary} {{/multiplexador/controle[3]} -radix binary} {{/multiplexador/controle[2]} -radix binary} {{/multiplexador/controle[1]} -radix binary} {{/multiplexador/controle[0]} -radix binary}} -subitemconfig {{/multiplexador/controle[9]} {-height 15 -radix binary} {/multiplexador/controle[8]} {-height 15 -radix binary} {/multiplexador/controle[7]} {-height 15 -radix binary} {/multiplexador/controle[6]} {-height 15 -radix binary} {/multiplexador/controle[5]} {-height 15 -radix binary} {/multiplexador/controle[4]} {-height 15 -radix binary} {/multiplexador/controle[3]} {-height 15 -radix binary} {/multiplexador/controle[2]} {-height 15 -radix binary} {/multiplexador/controle[1]} {-height 15 -radix binary} {/multiplexador/controle[0]} {-height 15 -radix binary}} /multiplexador/controle
add wave -noupdate -radix unsigned -childformat {{{/multiplexador/saida[15]} -radix unsigned} {{/multiplexador/saida[14]} -radix unsigned} {{/multiplexador/saida[13]} -radix unsigned} {{/multiplexador/saida[12]} -radix unsigned} {{/multiplexador/saida[11]} -radix unsigned} {{/multiplexador/saida[10]} -radix unsigned} {{/multiplexador/saida[9]} -radix unsigned} {{/multiplexador/saida[8]} -radix unsigned} {{/multiplexador/saida[7]} -radix unsigned} {{/multiplexador/saida[6]} -radix unsigned} {{/multiplexador/saida[5]} -radix unsigned} {{/multiplexador/saida[4]} -radix unsigned} {{/multiplexador/saida[3]} -radix unsigned} {{/multiplexador/saida[2]} -radix unsigned} {{/multiplexador/saida[1]} -radix unsigned} {{/multiplexador/saida[0]} -radix unsigned}} -subitemconfig {{/multiplexador/saida[15]} {-height 15 -radix unsigned} {/multiplexador/saida[14]} {-height 15 -radix unsigned} {/multiplexador/saida[13]} {-height 15 -radix unsigned} {/multiplexador/saida[12]} {-height 15 -radix unsigned} {/multiplexador/saida[11]} {-height 15 -radix unsigned} {/multiplexador/saida[10]} {-height 15 -radix unsigned} {/multiplexador/saida[9]} {-height 15 -radix unsigned} {/multiplexador/saida[8]} {-height 15 -radix unsigned} {/multiplexador/saida[7]} {-height 15 -radix unsigned} {/multiplexador/saida[6]} {-height 15 -radix unsigned} {/multiplexador/saida[5]} {-height 15 -radix unsigned} {/multiplexador/saida[4]} {-height 15 -radix unsigned} {/multiplexador/saida[3]} {-height 15 -radix unsigned} {/multiplexador/saida[2]} {-height 15 -radix unsigned} {/multiplexador/saida[1]} {-height 15 -radix unsigned} {/multiplexador/saida[0]} {-height 15 -radix unsigned}} /multiplexador/saida
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
add wave -noupdate -radix unsigned /multiplexador/Gout
add wave -noupdate -radix unsigned /multiplexador/Din
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {200 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 199
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
wave create -driver freeze -pattern counter -startvalue 0000000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg2 
wave create -driver freeze -pattern counter -startvalue 0000000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg3 
wave create -driver freeze -pattern counter -startvalue 0000000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg4 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg5 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg6 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg7 
wave create -driver freeze -pattern counter -startvalue 0000000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/Dado 
wave create -driver freeze -pattern counter -startvalue 0000000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/G 
wave create -driver freeze -pattern repeater -initialvalue 10000000 -period 50ps -sequence { 01000000 00100000 00010000 00001000 00000100 00000010 00000001 00000000 00000000  } -repeat forever -range 7 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/controlReg 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/Gout 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/Din 
wave create -driver freeze -pattern counter -startvalue 0000000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg0 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000000001000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg1 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000010000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg2 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000100000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg3 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 1000000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg4 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000000000010 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg5 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000000100000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg6 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000000100000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/reg7 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000100000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/Dado 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0100000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/G 
WaveExpandAll -1
wave create -driver freeze -pattern repeater -initialvalue 10000000 -period 50ps -sequence { 01000000 00100000 00010000 00001000 00000100 00000010 00000001 00000000 00000000  } -repeat forever -range 7 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/controlReg 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/Gout 
wave modify -driver freeze -pattern constant -value 1 -starttime 350ps -endtime 400ps Edit:/multiplexador/Gout 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/Din 
wave modify -driver freeze -pattern constant -value 1 -starttime 400ps -endtime 450ps Edit:/multiplexador/Din 
wave modify -driver freeze -pattern constant -value 00001000 -range 7 0 -starttime 0ps -endtime 1000ps Edit:/multiplexador/controlReg 
wave modify -driver freeze -pattern constant -value 0 -starttime 350ps -endtime 400ps Edit:/multiplexador/Gout 
wave modify -driver freeze -pattern constant -value 0 -starttime 400ps -endtime 450ps Edit:/multiplexador/Din 
WaveCollapseAll -1
wave clipboard restore
