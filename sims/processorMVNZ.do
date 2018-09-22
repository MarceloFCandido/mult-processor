onerror {resume}
quietly WaveActivateNextPane {} 0
quietly WaveActivateNextPane
add wave -noupdate -divider Inputs
add wave -noupdate /processor/clock
add wave -noupdate /processor/DIN
add wave -noupdate /processor/resetN
add wave -noupdate -divider {Registradores gerais}
add wave -noupdate /processor/out0
add wave -noupdate /processor/out1
add wave -noupdate /processor/out2
add wave -noupdate /processor/out3
add wave -noupdate /processor/out4
add wave -noupdate /processor/out5
add wave -noupdate /processor/out6
add wave -noupdate /processor/out7
add wave -noupdate -divider {Registradores especiais}
add wave -noupdate /processor/IRin
add wave -noupdate /processor/IRout
add wave -noupdate /processor/sigA
add wave -noupdate /processor/outA
add wave -noupdate /processor/sigG
add wave -noupdate /processor/outG
add wave -noupdate -divider Mux
add wave -noupdate /processor/decG
add wave -noupdate /processor/decDIN
add wave -noupdate /processor/decoutgen
add wave -noupdate -divider ULA
add wave -noupdate /processor/ctrlULA
add wave -noupdate /processor/outULA
add wave -noupdate -divider Sinais
add wave -noupdate /processor/counterOut
add wave -noupdate /processor/clear
add wave -noupdate /processor/write
add wave -noupdate -divider Diversos
add wave -noupdate /processor/Xreg
add wave -noupdate /processor/Yreg
add wave -noupdate /processor/decout0
add wave -noupdate /processor/decout1
add wave -noupdate /processor/teste
add wave -noupdate -divider Outputs
add wave -noupdate /processor/done
add wave -noupdate /processor/busWires
add wave -noupdate -divider Edições
add wave -noupdate /processor/clock
add wave -noupdate /processor/DIN
add wave -noupdate /processor/resetN
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 174
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
WaveRestoreZoom {0 ps} {2100 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/processor/clock 
wave create -driver freeze -pattern constant -value 0 -range 15 0 -starttime 0ps -endtime 1000ps sim:/processor/DIN 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 0000000000000001 -range 15 0 -starttime 0ps -endtime 1000ps Edit:/processor/DIN 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/processor/resetN 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 51ps Edit:/processor/resetN 
wave modify -driver freeze -pattern constant -value 0000000000000000 -range 15 0 -starttime 0ps -endtime 1000ps Edit:/processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000100001001 -range 15 0 -starttime 0ps -endtime 1000ps Edit:/processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000100100001 -range 15 0 -starttime 450ps -endtime 1000ps Edit:/processor/DIN 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 2000ps Edit:/processor/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 999ps -endtime 2000ps Edit:/processor/resetN 
wave modify -driver freeze -pattern constant -value 0000000100001001 -range 15 0 -starttime 850ps -endtime 2000ps Edit:/processor/DIN 
WaveCollapseAll -1
wave clipboard restore
