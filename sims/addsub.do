onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /addsub/op1
add wave -noupdate /addsub/op2
add wave -noupdate /addsub/ctrl
add wave -noupdate -radix binary -childformat {{{/addsub/out[15]} -radix binary} {{/addsub/out[14]} -radix binary} {{/addsub/out[13]} -radix binary} {{/addsub/out[12]} -radix binary} {{/addsub/out[11]} -radix binary} {{/addsub/out[10]} -radix binary} {{/addsub/out[9]} -radix binary} {{/addsub/out[8]} -radix binary} {{/addsub/out[7]} -radix binary} {{/addsub/out[6]} -radix binary} {{/addsub/out[5]} -radix binary} {{/addsub/out[4]} -radix binary} {{/addsub/out[3]} -radix binary} {{/addsub/out[2]} -radix binary} {{/addsub/out[1]} -radix binary} {{/addsub/out[0]} -radix binary}} -subitemconfig {{/addsub/out[15]} {-height 15 -radix binary} {/addsub/out[14]} {-height 15 -radix binary} {/addsub/out[13]} {-height 15 -radix binary} {/addsub/out[12]} {-height 15 -radix binary} {/addsub/out[11]} {-height 15 -radix binary} {/addsub/out[10]} {-height 15 -radix binary} {/addsub/out[9]} {-height 15 -radix binary} {/addsub/out[8]} {-height 15 -radix binary} {/addsub/out[7]} {-height 15 -radix binary} {/addsub/out[6]} {-height 15 -radix binary} {/addsub/out[5]} {-height 15 -radix binary} {/addsub/out[4]} {-height 15 -radix binary} {/addsub/out[3]} {-height 15 -radix binary} {/addsub/out[2]} {-height 15 -radix binary} {/addsub/out[1]} {-height 15 -radix binary} {/addsub/out[0]} {-height 15 -radix binary}} /addsub/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 3} {650 ps} 0}
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
WaveRestoreZoom {0 ps} {1470 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 1 -range 15 0 -starttime 0ps -endtime 1000ps sim:/addsub/op1 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 10 -range 15 0 -starttime 0ps -endtime 1000ps sim:/addsub/op2 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 000 -endvalue 101 -type Range -direction Up -period 100ps -step 1 -repeat forever -range 2 0 -starttime 0ps -endtime 1000ps sim:/addsub/ctrl 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 0000000000001101 -range 15 0 -starttime 0ps -endtime 1000ps Edit:/addsub/op1 
wave modify -driver freeze -pattern counter -startvalue 000 -endvalue 110 -type Range -direction Up -period 100ps -step 1 -repeat forever -range 2 0 -starttime 0ps -endtime 1000ps Edit:/addsub/ctrl 
wave modify -driver freeze -pattern constant -value 0000000000000011 -range 15 0 -starttime 0ps -endtime 1400ps Edit:/addsub/op1 
wave modify -driver freeze -pattern constant -value 0000000000001101 -range 15 0 -starttime 0ps -endtime 700ps Edit:/addsub/op1 
wave modify -driver freeze -pattern counter -startvalue 000 -endvalue 110 -type Range -direction Up -period 100ps -step 1 -repeat forever -range 2 0 -starttime 0ps -endtime 1400ps Edit:/addsub/ctrl 
wave modify -driver freeze -pattern constant -value 0000000000000100 -range 15 0 -starttime 700ps -endtime 1400ps Edit:/addsub/op2 
WaveCollapseAll -1
wave clipboard restore
