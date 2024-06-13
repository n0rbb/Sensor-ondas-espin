grid on;
M = csvread('calibrado.csv', 1, 0);

M(M > 1e10)= 0;

M(:,1) = M(:,1) - M(1:1)
yyaxis left
lo = plot(M(:,1) - M(1:1), M(:,2) ./ 1e6)
ylabel("F (MHz)")

yyaxis right
iff = plot(M(:,1) - M(1:1), M(:,3) ./ 1e6)
ylabel("F (MHz)")

legend([lo, iff], "Oscilador local", "Señal de salida", "Location","northwest")
a = size(M);
xlim([0, M(a(1),1)])
title("Autocalibrado")