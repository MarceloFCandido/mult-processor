onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Inputs
add wave -noupdate -divider Outputs
add wave -noupdate /ram_proc/done
add wave -noupdate -divider Internos
add wave -noupdate /ram_proc/din
add wave -noupdate /ram_proc/w
add wave -noupdate -divider <NULL>
add wave -noupdate -divider RAM
add wave -noupdate /ram_proc/addr
add wave -noupdate /ram_proc/w
add wave -noupdate /ram_proc/ramQ
add wave -noupdate -divider Processador
add wave -noupdate /ram_proc/proc/DIN
add wave -noupdate -divider PC
add wave -noupdate /ram_proc/proc/pgmCnt/in
add wave -noupdate /ram_proc/proc/pgmCnt/incr_pc
add wave -noupdate /ram_proc/proc/pgmCnt/load
add wave -noupdate -divider {Registradores especiais}
add wave -noupdate /ram_proc/proc/ir0/write
add wave -noupdate /ram_proc/proc/ir0/out
add wave -noupdate /ram_proc/proc/A/write
add wave -noupdate /ram_proc/proc/A/out
add wave -noupdate /ram_proc/proc/G/write
add wave -noupdate /ram_proc/proc/G/out
add wave -noupdate /ram_proc/proc/dOutReg/write
add wave -noupdate /ram_proc/proc/dOutReg/out
add wave -noupdate /ram_proc/proc/addressReg/write
add wave -noupdate /ram_proc/proc/addressReg/out
add wave -noupdate /ram_proc/proc/writeReg/write
add wave -noupdate /ram_proc/proc/writeReg/out
add wave -noupdate -divider {Registradores gerais}
add wave -noupdate /ram_proc/proc/write
add wave -noupdate -radix decimal /ram_proc/proc/reg0/out
add wave -noupdate -radix decimal /ram_proc/proc/reg1/out
add wave -noupdate -radix decimal /ram_proc/proc/reg2/out
add wave -noupdate -radix decimal /ram_proc/proc/reg3/out
add wave -noupdate -radix decimal /ram_proc/proc/reg4/out
add wave -noupdate -radix decimal /ram_proc/proc/reg5/out
add wave -noupdate -radix decimal /ram_proc/proc/reg6/out
add wave -noupdate /ram_proc/proc/pgmCnt/out
add wave -noupdate -divider Mux
add wave -noupdate /ram_proc/proc/mux0/controle
add wave -noupdate /ram_proc/proc/mux0/controlReg
add wave -noupdate /ram_proc/proc/mux0/Gout
add wave -noupdate /ram_proc/proc/mux0/Din
add wave -noupdate /ram_proc/proc/busWires
add wave -noupdate -divider ULA
add wave -noupdate /ram_proc/proc/as/ctrl
add wave -noupdate /ram_proc/proc/as/out
add wave -noupdate -divider Sinais
add wave -noupdate /ram_proc/proc/c0/out
add wave -noupdate -divider Diversos
add wave -noupdate /ram_proc/proc/dec0/Y
add wave -noupdate /ram_proc/proc/dec1/Y
add wave -noupdate -divider Edições
add wave -noupdate /ram_proc/clock
add wave -noupdate /ram_proc/resetN
add wave -noupdate /ram_proc/run
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1021 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 227
configure wave -valuecolwidth 132
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
WaveRestoreZoom {0 ps} {14753 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1500ps sim:/ram_proc/clock 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1500ps sim:/ram_proc/resetN 
wave create -driver freeze -pattern constant -value 000010 -range 5 0 -starttime 0ps -endtime 1500ps sim:/ram_proc/addr 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 100ps Edit:/ram_proc/resetN 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 1500ps -endtime 2300ps Edit:/ram_proc/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 1500ps -endtime 2300ps Edit:/ram_proc/resetN 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 2300ps -endtime 2700ps Edit:/ram_proc/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 2300ps -endtime 2700ps Edit:/ram_proc/resetN 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 14000ps Edit:/ram_proc/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 2000ps -endtime 14000ps Edit:/ram_proc/resetN 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 14000ps -endtime 18000ps Edit:/ram_proc/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 14000ps -endtime 18000ps Edit:/ram_proc/resetN 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 18000ps -endtime 23000ps Edit:/ram_proc/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 18000ps -endtime 23000ps Edit:/ram_proc/resetN 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 23000ps sim:/ram_proc/run 
WaveCollapseAll -1
wave clipboard restore
