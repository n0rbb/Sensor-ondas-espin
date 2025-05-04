onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib I2C_fifo_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {I2C_fifo.udo}

run 1000ns

quit -force
