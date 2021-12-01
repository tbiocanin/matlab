figure(1)
plot(simout(:, 1), simout(:, 2 : end)) % zameniti tout sa vremenom koji je u simputu
% jedan pristup resavanju ovog problema je da dodas clock block i onda tako ubacis vreme
% indirektno 
figure(2)
plot(izlaz(1, :), izlaz(2, :), izlaz(1, :), izlaz(3, :), izlaz(1, :), izlaz(4, :));
% imati u vidu da se mogu traziti signali pojedinacno, a ne sve spojeno