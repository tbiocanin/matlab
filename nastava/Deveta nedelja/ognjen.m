% dva grafika na jednom

plot(izlaz(1, :), izlaz(2, :), vreme, simout)

% svaki grafik pojedinacno
figure(1)
plot(izlaz(1, :), izlaz(2, :))
grid on
xlabel('vreme')
ylabel('simout')
title('neki zadatak')
figure(2)
plot(simout(:, 1), simout(:, 2))