clear; close all; clc;

%Marca en puerto 1 boca abajo
d1s12 = readtable("y161ds12p.xlsx");
d1s21 = readtable("y161ds21p.xlsx");

%Marca en puerto 2 boca abajo
d2s12 = readtable("y162ds12p.xlsx");
d2s21 = readtable("y162ds21p.xlsx");

%1 boca arriba
u1s12 = readtable("y161us12p.xlsx");
u1s21 = readtable("y161us21p.xlsx");

%2 boca arriba
u2s12 = readtable("y162us12p.xlsx");
u2s21 = readtable("y162us21p.xlsx");

%% S12

figure()

subplot(2, 2, 1)
plot(d1s12{:, 1}, d1s12{:, 2}); grid on; 
%plot(d1s21{:, 1}, d1s21{:, 2}); hold off;
title("1d")
%legend("S12", "S21")    
xlim([4e9 5.4e9])
ylabel("\phi (º)")
xlabel("Frecuencia (Hz)")


subplot(2, 2, 2)
plot(d2s12{:, 1}, d2s12{:, 2}); grid on; 
%plot(d2s21{:, 1}, d2s21{:, 2}); hold off;
title("2d")
%legend("S12", "S21")
xlim([4e9 5.4e9])
ylabel("\phi (º)")
xlabel("Frecuencia (Hz)")

subplot(2, 2, 3)
plot(u1s12{:, 1}, u1s12{:, 2}); grid on; 
%plot(u1s21{:, 1}, u1s21{:, 2}); hold off;
title("1u")
%legend("S12", "S21")
xlim([4e9 5.4e9])
ylabel("\phi (º)")
xlabel("Frecuencia (Hz)")

subplot(2, 2, 4)
plot(u2s12{:, 1}, u2s12{:, 2}); grid on; 
%plot(u2s21{:, 1}, u2s21{:, 2}); hold off;
title("2u")
%legend("S12", "S21")
xlim([4e9 5.4e9])
ylabel("\phi (º)")
xlabel("Frecuencia (Hz)")

sgtitle("Fase YIG 16, d = 4mm, S12")


%% S21

figure()

a = [4e9 4.5e9]

subplot(2, 2, 1)
%plot(d1s12{:, 1}, d1s12{:, 2}); grid on; hold on;
plot(d1s21{:, 1}, d1s21{:, 2}); grid on;
title("1d")
%legend("S12", "S21")    
xlim(a)
ylabel("\phi (º)")
xlabel("Frecuencia (Hz)")


subplot(2, 2, 2)
%plot(d2s12{:, 1}, d2s12{:, 2}); grid on; hold on;
plot(d2s21{:, 1}, d2s21{:, 2}); grid on;
title("2d")
%legend("S12", "S21")
xlim(a)
ylabel("\phi (º)")
xlabel("Frecuencia (Hz)")

subplot(2, 2, 3)
%plot(u1s12{:, 1}, u1s12{:, 2}); grid on; hold on;
plot(u1s21{:, 1}, u1s21{:, 2}); grid on;
title("1u")
%legend("S12", "S21")
xlim(a)
ylabel("\phi (º)")
xlabel("Frecuencia (Hz)")

subplot(2, 2, 4)
%plot(u2s12{:, 1}, u2s12{:, 2}); grid on; hold on;
plot(u2s21{:, 1}, u2s21{:, 2}); grid on;
title("2u")
%legend("S12", "S21")
xlim(a)
ylabel("\phi (º)")
xlabel("Frecuencia (Hz)")

sgtitle("Fase YIG 16, d = 4mm, S21")