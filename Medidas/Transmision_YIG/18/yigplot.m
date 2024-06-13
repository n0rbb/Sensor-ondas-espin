clear all; close all; clc;

%Dios me perdone por la basura de código que voy a escribir
%% Pico d = 1cm

%Marca en puerto 1 boca abajo
d1s12 = readtable("03-10-2023/11d4gs12.xlsx");
d1s21 = readtable("03-10-2023/11d4gs21.xlsx");

%Marca en puerto 2 boca abajo
d2s12 = readtable("03-10-2023/12d4gs12-2.xlsx");
d2s21 = readtable("03-10-2023/12d4gs21-2.xlsx");

%1 boca arriba
u1s12 = readtable("03-10-2023/11u4gs12.xlsx");
u1s21 = readtable("03-10-2023/11u4gs21.xlsx");

%2 boca arriba
u2s12 = readtable("03-10-2023/12u4gs12-2.xlsx");
u2s21 = readtable("03-10-2023/12u4gs21-2.xlsx");

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
plot(d2s12{:, 1}, d2s12{:, 2}); grid on; hold on;
plot(d2s21{:, 1}, d2s21{:, 2}); hold off;
title("2d")
legend("S12", "S21")
xlim([3e9 5e9])
ylabel("dB")
xlabel("Frecuencia (Hz)")

subplot(2, 2, 3)
plot(u1s12{:, 1}, u1s12{:, 2}); grid on; hold on;
plot(u1s21{:, 1}, u1s21{:, 2}); hold off;
title("1u")
legend("S12", "S21")
xlim([3e9 5e9])
ylim([-90 -10])
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
sgtitle("d = 1cm")


%Raro que el pico doble salga en S21 sin importar la dirección del YIG (al
%darle la vuelta tendrían que invertirse las señales) 

%El tema del pico doble es por la baja cantidad de puntos (con más puntos
%de muestreo sale bien la "aleta de tiburón"). Además, el intercambio entre
%S21 y S12 no depende de la orientación del YIG sino de la posición del
%imán respecto del circuito.


%% Pico d = 0.5cm

%Marca en puerto 1 boca abajo
d1s12 = readtable("03-10-2023/51d3-5gs12.xlsx"); %1ds12lw
d1s21 = readtable("03-10-2023/51d3-5gs21.xlsx"); %1ds21lw

%Marca en puerto 2 boca abajo
d2s12 = readtable("03-10-2023/52d3-5gs12.xlsx"); %2ds12l
d2s21 = readtable("03-10-2023/52d3-5gs21.xlsx"); %2ds12l

%1 boca arriba
u1s12 = readtable("03-10-2023/51u3-5gs12.xlsx"); %1us12lw
u1s21 = readtable("03-10-2023/51u3-5gs21.xlsx"); %1us21lw

%2 boca arriba
u2s12 = readtable("03-10-2023/52u3-5gs12.xlsx"); %2us12lb
u2s21 = readtable("03-10-2023/52u3-5gs21.xlsx"); %2us21lb

figure(2)

subplot(2, 2, 1)
plot(d1s12{:, 1}, d1s12{:, 2}); grid on; hold on;
plot(d1s21{:, 1}, d1s21{:, 2}); hold off;
title("1d")
legend("S12", "S21")
xlim([2e9 5e9])
ylabel("dB")
xlabel("Frecuencia (Hz)")


subplot(2, 2, 2)
plot(d2s12{:, 1}, d2s12{:, 2}); grid on; hold on;
plot(d2s21{:, 1}, d2s21{:, 2}); hold off;
title("2d")
legend("S12", "S21")
xlim([2e9 5e9])
ylabel("dB")
xlabel("Frecuencia (Hz)")

subplot(2, 2, 3)
plot(u1s12{:, 1}, u1s12{:, 2}); grid on; hold on;
plot(u1s21{:, 1}, u1s21{:, 2}); hold off;
title("1u")
legend("S12", "S21")
xlim([2e9 5e9])
ylabel("dB")
xlabel("Frecuencia (Hz)")

subplot(2, 2, 4)
plot(u2s12{:, 1}, u2s12{:, 2}); grid on; hold on;
plot(u2s21{:, 1}, u2s21{:, 2}); hold off;
title("2u")
legend("S12", "S21")
xlim([2e9 5e9])
ylabel("dB")
xlabel("Frecuencia (Hz)")

sgtitle("d = 0.5cm")


%% Pico d = 0.2cm


d1s12 = readtable("03-10-2023/21d3-5gs12.xlsx"); %1ds12lw
d1s21 = readtable("03-10-2023/21d3-5gs21.xlsx"); %1ds21lw

%Marca en puerto 2 boca abajo
d2s12 = readtable("03-10-2023/22d3-5gs12.xlsx"); %2ds12l
d2s21 = readtable("03-10-2023/22d3-5gs21.xlsx"); %2ds12l

%1 boca arriba
u1s12 = readtable("03-10-2023/21u3-5gs12.xlsx"); %1us12lw
u1s21 = readtable("03-10-2023/21u3-5gs21.xlsx"); %1us21lw

%2 boca arriba
u2s12 = readtable("03-10-2023/22u3-5gs12.xlsx"); %2us12lb
u2s21 = readtable("03-10-2023/22u3-5gs21.xlsx"); %2us21lb

figure(3)

subplot(2, 2, 1)
plot(d1s12{:, 1}, d1s12{:, 2}); grid on; hold on;
plot(d1s21{:, 1}, d1s21{:, 2}); hold off;
title("1d")
legend("S12", "S21")
xlim([2e9 5e9])
ylabel("dB")
xlabel("Frecuencia (Hz)")


subplot(2, 2, 2)
plot(d2s12{:, 1}, d2s12{:, 2}); grid on; hold on;
plot(d2s21{:, 1}, d2s21{:, 2}); hold off;
title("2d")
legend("S12", "S21")
xlim([2e9 5e9])
ylabel("dB")
xlabel("Frecuencia (Hz)")

subplot(2, 2, 3)
plot(u1s12{:, 1}, u1s12{:, 2}); grid on; hold on;
plot(u1s21{:, 1}, u1s21{:, 2}); hold off;
title("1u")
legend("S12", "S21")
xlim([2e9 5e9])
ylabel("dB")
xlabel("Frecuencia (Hz)")

subplot(2, 2, 4)
plot(u2s12{:, 1}, u2s12{:, 2}); grid on; hold on;
plot(u2s21{:, 1}, u2s21{:, 2}); hold off;
title("2u")
legend("S12", "S21")
xlim([2e9 5e9])
ylabel("dB")
xlabel("Frecuencia (Hz)")

sgtitle("d = 0.2 cm") %CENTRADO
