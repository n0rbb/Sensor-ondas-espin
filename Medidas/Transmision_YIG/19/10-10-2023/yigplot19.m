clear; close all; clc;

%Marca en puerto 1 boca abajo
d1s12 = readtable("y191ds12.xlsx");
d1s21 = readtable("y191ds21.xlsx");

%Marca en puerto 2 boca abajo
d2s12 = readtable("y192ds12.xlsx");
d2s21 = readtable("y192ds21.xlsx");

%1 boca arriba
u1s12 = readtable("y191us12.xlsx");
u1s21 = readtable("y191us21.xlsx");

%2 boca arriba
u2s12 = readtable("y192us12.xlsx");
u2s21 = readtable("y192us21.xlsx");

figure(1)

subplot(2, 2, 1)
plot(d1s12{:, 1}, d1s12{:, 2}); grid on; hold on;
plot(d1s21{:, 1}, d1s21{:, 2}); hold off;
title("1d")
legend("S12", "S21")
xlim([3e9 5.5e9])
ylim([-80 0]) % tiene un rayón hacia abajo un poco raruno
ylabel("dB")
xlabel("Frecuencia (Hz)")

subplot(2, 2, 2)
plot(d2s12{:, 1}, d2s12{:, 2}); grid on; hold on;
plot(d2s21{:, 1}, d2s21{:, 2}); hold off;
title("2d")
legend("S12", "S21")
xlim([3e9 5.5e9])
ylabel("dB")
xlabel("Frecuencia (Hz)")

subplot(2, 2, 3)
plot(u1s12{:, 1}, u1s12{:, 2}); grid on; hold on;
plot(u1s21{:, 1}, u1s21{:, 2}); hold off;
title("1u")
legend("S12", "S21")
xlim([3e9 5.5e9])
ylabel("dB")
xlabel("Frecuencia (Hz)")

subplot(2, 2, 4)
plot(u2s12{:, 1}, u2s12{:, 2}); grid on; hold on;
plot(u2s21{:, 1}, u2s21{:, 2}); hold off;
title("2u")
legend("S12", "S21")
xlim([3e9 5.5e9])
ylabel("dB")
xlabel("Frecuencia (Hz)")
sgtitle("YIG 19, d = 4mm")