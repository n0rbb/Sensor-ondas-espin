transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+RS232_fifo  -L xil_defaultlib -L xpm -L fifo_generator_v13_2_13 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RS232_fifo xil_defaultlib.glbl

do {RS232_fifo.udo}

run 1000ns

endsim

quit -force
