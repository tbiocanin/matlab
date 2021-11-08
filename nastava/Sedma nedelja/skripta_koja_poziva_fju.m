close all, clear, clc

figure(1), hold on, grid
[tt, yy] = ode45('sedma_nedelja', [0 45], [0 0]');
plot(tt, yy(:, 1));


% za klk
% prvi zad neko racunanje
% drugi dobijemo manipulacije matricama
% treci zadatak ovako nesto