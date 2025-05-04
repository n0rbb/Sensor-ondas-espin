transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+I2C_fifo  -L xpm -L fifo_generator_v13_2_10 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.I2C_fifo xil_defaultlib.glbl

do {I2C_fifo.udo}

run 1000ns

endsim

quit -force
