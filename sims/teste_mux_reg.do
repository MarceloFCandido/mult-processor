onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Teste_Reg_Multiplex/DataIn
add wave -noupdate /Teste_Reg_Multiplex/G
add wave -noupdate -radix unsigned /Teste_Reg_Multiplex/r0
add wave -noupdate -radix unsigned /Teste_Reg_Multiplex/r1
add wave -noupdate -radix unsigned /Teste_Reg_Multiplex/r2
add wave -noupdate -radix unsigned /Teste_Reg_Multiplex/r3
add wave -noupdate -radix unsigned /Teste_Reg_Multiplex/r4
add wave -noupdate -radix unsigned /Teste_Reg_Multiplex/r5
add wave -noupdate -radix unsigned /Teste_Reg_Multiplex/r6
add wave -noupdate -radix unsigned /Teste_Reg_Multiplex/r7
add wave -noupdate /Teste_Reg_Multiplex/clock
add wave -noupdate /Teste_Reg_Multiplex/write
add wave -noupdate /Teste_Reg_Multiplex/Gout
add wave -noupdate /Teste_Reg_Multiplex/Din
add wave -noupdate -radix hexadecimal /Teste_Reg_Multiplex/r0_out
add wave -noupdate -radix hexadecimal /Teste_Reg_Multiplex/r1_out
add wave -noupdate -radix hexadecimal /Teste_Reg_Multiplex/r2_out
add wave -noupdate -radix hexadecimal /Teste_Reg_Multiplex/r3_out
add wave -noupdate -radix hexadecimal /Teste_Reg_Multiplex/r4_out
add wave -noupdate -radix hexadecimal /Teste_Reg_Multiplex/r5_out
add wave -noupdate -radix hexadecimal /Teste_Reg_Multiplex/r6_out
add wave -noupdate -radix hexadecimal /Teste_Reg_Multiplex/r7_out
add wave -noupdate /Teste_Reg_Multiplex/IR
add wave -noupdate /Teste_Reg_Multiplex/X
add wave -noupdate /Teste_Reg_Multiplex/Y
add wave -noupdate /Teste_Reg_Multiplex/Bus
add wave -noupdate /Teste_Reg_Multiplex/mult1/controle
add wave -noupdate /Teste_Reg_Multiplex/mult1/controlReg
add wave -noupdate /Teste_Reg_Multiplex/mult1/Gout
add wave -noupdate /Teste_Reg_Multiplex/mult1/Din
add wave -noupdate /Teste_Reg_Multiplex/mult1/saida
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {422 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 293
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
WaveRestoreZoom {0 ps} {1005 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 000010100010000 -range 15 0 -starttime 0ps -endtime 200ps sim:/Teste_Reg_Multiplex/DataIn 
wave create -driver freeze -pattern constant -value 000010100010000 -range 15 0 -starttime 0ps -endtime 1000ps sim:/Teste_Reg_Multiplex/DataIn 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 000010000010000 -range 15 0 -starttime 200ps -endtime 400ps Edit:/Teste_Reg_Multiplex/DataIn 
wave create -driver freeze -pattern constant -value 100000000000000 -range 15 0 -starttime 0ps -endtime 1000ps sim:/Teste_Reg_Multiplex/G 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -range 15 0 -starttime 0ps -endtime 1000ps sim:/Teste_Reg_Multiplex/r0 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 01 -range 15 0 -starttime 0ps -endtime 1000ps sim:/Teste_Reg_Multiplex/r1 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 010 -range 15 0 -starttime 0ps -endtime 1000ps sim:/Teste_Reg_Multiplex/r2 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 011 -range 15 0 -starttime 0ps -endtime 1000ps sim:/Teste_Reg_Multiplex/r3 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0100 -range 15 0 -starttime 0ps -endtime 1000ps sim:/Teste_Reg_Multiplex/r4 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0101 -range 15 0 -starttime 0ps -endtime 1000ps sim:/Teste_Reg_Multiplex/r5 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0110 -range 15 0 -starttime 0ps -endtime 1000ps sim:/Teste_Reg_Multiplex/r6 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0111 -range 15 0 -starttime 0ps -endtime 1000ps sim:/Teste_Reg_Multiplex/r7 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/Teste_Reg_Multiplex/clock 
wave create -driver freeze -pattern clock -initialvalue z -period 200ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/Teste_Reg_Multiplex/write 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/Teste_Reg_Multiplex/Gout 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/Teste_Reg_Multiplex/Din 
wave modify -driver freeze -pattern constant -value 0000010000000000 -range 15 0 -starttime 200ps -endtime 400ps Edit:/Teste_Reg_Multiplex/DataIn 
wave modify -driver freeze -pattern constant -value 0000010000110000 -range 15 0 -starttime 600ps -endtime 800ps Edit:/Teste_Reg_Multiplex/DataIn 
WaveCollapseAll -1
wave clipboard restore
