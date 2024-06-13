##Spin-wave sensor
This repository includes all the code written (or stolen) in order to complete my bachelor thesis: Instrumentation for a spin-wave sensor to measure magnetic properties of nanoparticles. 
The control code is designed to work with a Teensy 4.0 board @ 150MHz peripheral clock frequency (600MHz internal clock) and an ADF4351 Eval board thru SPI communication protocol.

The acquiring data python script requires the serial ports to be closed, so no callibration nor modulation of the LO frequency can be performed when acquiring experimental data. 
