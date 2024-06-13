clear all; close all; clc;

%Dios me perdone por la basura de código que voy a escribir
%% Pico d = 0.5cm

%Marca en puerto 1 boca abajo %1d es 1f
d1s12 = readtable("y031fs12.xlsx");
d1s21 = readtable("y031fs21.xlsx");

%Marca en puerto 2 boca abajo %2d es 2c
d2s12 = readtable("y032cs12.xlsx");
d2s21 = readtable("y032cs21.xlsx");

%1 boca arriba
u1s12 = readtable("y031cs12.xlsx");
u1s21 = readtable("y031cs21.xlsx");

%2 boca arriba
u2s12 = readtable("y032fs12.xlsx");
u2s21 = readtable("y032fs21.xlsx");

figure(1)

subplot(2, 2, 1)
plot(d1s12{:, 1}, d1s12{:, 2}); grid on; hold on;
plot(d1s21{:, 1}, d1s21{:, 2}); hold off;
title("1d")
legend("S12", "S21")
xlim([3e9 5e9])
ylabel("dB")
xlabel("Frecuencia (Hz)")


subplot(2, 2, 2)
plot(d2s12{:, 1} - 2e8, d2s12{:, 2}); grid on; hold on;
plot(d2s21{:, 1} - 2e8, d2s21{:, 2}); hold off;
title("2d")
legend("S12", "S21")
xlim([3e9 5e9])
ylim([-70 -10])
ylabel("dB")
xlabel("Frecuencia (Hz)")

subplot(2, 2, 3)
plot(u1s12{:, 1}, u1s12{:, 2}); grid on; hold on;
plot(u1s21{:, 1}, u1s21{:, 2}); hold off;
title("1u")
legend("S12", "S21")
xlim([3e9 5e9])
ylim([-70 -10])
ylabel("dB")
xlabel("Frecuencia (Hz)")

subplot(2, 2, 4)
plot(u2s12{:, 1}, u2s12{:, 2}); grid on; hold on;
plot(u2s21{:, 1}, u2s21{:, 2}); hold off;
title("2u")
legend("S12", "S21")
xlim([3e9 5e9])
ylabel("dB")
xlabel("Frecuencia (Hz)")
ylim([-70 -10])
sgtitle("d = 5mm")



