clear; close all; clc;

%Marca en puerto 1 
ls12 = readtable("y19-s12.xlsx");
ls21 = readtable("y19-s21.xlsx");

%Marca en puerto 2 
ds12 = readtable("y19+s12.xlsx");
ds21 = readtable("y19+s21.xlsx");

figure()

subplot(1, 2, 1)
plot(ls12{:, 1}, ls12{:, 2}); grid on; hold on;
plot(ls21{:, 1}, ls21{:, 2}); hold off;
title("Marca sobre puerto 1")
legend("S12", "S21")
ylabel("dB")
xlabel("Frecuencia (Hz)")

subplot(1, 2, 2)
plot(ds12{:, 1}, ds12{:, 2}); grid on; hold on;
plot(ds21{:, 1}, ds21{:, 2}); hold off;
title("Marca sobre puerto 2")
legend("S12", "S21")
ylabel("dB")
xlabel("Frecuencia (Hz)")

sgtitle("YIG 19")