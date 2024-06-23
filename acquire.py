import serial 
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation   
import csv

SERIAL_PORT  = '/dev/cu.usbmodem68803101'
BAUD_RATE = 9600

ser = serial.Serial(SERIAL_PORT, BAUD_RATE)

x_vals = []
lo_data = []
if_data = []

def read_and_process_data():
    line  = ser.readline().decode('utf-8').strip()
    rfvalues = line.split(', ') #He separado las líneas y dentro de las líneas separo por comas

    x_vals.append(float(rfvalues[0]))
    lo_data.append(int(rfvalues[1]))
    if_data.append(int(rfvalues[2]))

    print(f'Time: {rfvalues[0]}, LO: {rfvalues[1]}, IF: {rfvalues[2]}')

def update_plot(frame):
    read_and_process_data()
    plt.cla()
    #plt.plot(x_vals, lo_data, label = 'Oscilador')
    plt.plot(x_vals, if_data, label = 'IF')
    plt.xlabel('Tiempo')
    plt.ylabel('Frecuencia')
    plt.legend()


def on_close(event):
    with open('datos.csv', 'w', newline = '') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(['Tiempo', 'Oscilador', 'Salida'])
        for x, lo, out in zip(x_vals, lo_data, if_data):
            writer.writerow([x, lo, out])

fig, ax = plt.subplots()
fig.canvas.mpl_connect('close_event', on_close)
ani = FuncAnimation(fig, update_plot, interval=10)

plt.show()


