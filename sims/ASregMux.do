view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 10 -range 15 0 -starttime 0ps -endtime 1000ps sim:/ASRegMux/in1 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/ASRegMux/clock 
wave create -driver freeze -pattern constant -value 10 -range 15 0 -starttime 0ps -endtime 1000ps sim:/ASRegMux/in2 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/ASRegMux/write1 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/ASRegMux/write2 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 100ps Edit:/ASRegMux/write1 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 100ps Edit:/ASRegMux/write2 
wave create -driver freeze -pattern constant -value 00000001 -range 7 0 -starttime 0ps -endtime 1000ps sim:/ASRegMux/ctrlMux 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/ASRegMux/writeA 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/ASRegMux/writeG 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/ASRegMux/sigG 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/ASRegMux/sigDIN 
wave create -driver freeze -pattern constant -value 000 -range 2 0 -starttime 0ps -endtime 1000ps sim:/ASRegMux/ctrlULA 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 1 -starttime 100ps -endtime 200ps Edit:/ASRegMux/writeA 
wave modify -driver freeze -pattern constant -value 00000000 -range 7 0 -starttime 0ps -endtime 100ps Edit:/ASRegMux/ctrlMux 
wave modify -driver freeze -pattern constant -value 00000010 -range 7 0 -starttime 100ps -endtime 1000ps Edit:/ASRegMux/ctrlMux 
wave modify -driver freeze -pattern constant -value 00000001 -range 7 0 -starttime 100ps -endtime 1000ps Edit:/ASRegMux/ctrlMux 
wave modify -driver freeze -pattern constant -value 00000010 -range 7 0 -starttime 200ps -endtime 1000ps Edit:/ASRegMux/ctrlMux 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ps -endtime 400ps Edit:/ASRegMux/writeG 
wave modify -driver freeze -pattern constant -value 1 -starttime 300ps -endtime 400ps Edit:/ASRegMux/sigG 
wave modify -driver freeze -pattern constant -value 00000000 -range 7 0 -starttime 300ps -endtime 400ps Edit:/ASRegMux/ctrlMux 
wave modify -driver freeze -pattern constant -value 00000000 -range 7 0 -starttime 300ps -endtime 1000ps Edit:/ASRegMux/ctrlMux 
wave modify -driver freeze -pattern constant -value 1 -starttime 300ps -endtime 400ps Edit:/ASRegMux/write1 
WaveCollapseAll -1
wave clipboard restore
