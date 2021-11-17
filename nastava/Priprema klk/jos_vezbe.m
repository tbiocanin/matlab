clear, clc 
a = 3; %o ovo je pod a, drugog zadatka
u = 0; % ono je identicki jednako nuli za svako t
% PRVI ZADATAK SA DRUGIM ZADATKOM
% figure(1), hold on, grid;
% for x1 = 0:5
%     [tt, yy] = ode45('vezba', [0 5], [x1 0]', [], a);
% end
% plot(tt, yy(:, 1))
% figure(2), grid;

% x1b = 0; x2b = 0;
% for a = 1:5
%     [tt, yy] = ode45('vezba', [0 5], [x1b x2b]', [], a);
% end
% plot(tt, yy(:, 1))

% TRECI ZADATAK
figure(1), hold on, grid
[tt, yy] = ode45('vezba', [0 1000], [0 0 0]');
plot(tt, yy(:, 1))