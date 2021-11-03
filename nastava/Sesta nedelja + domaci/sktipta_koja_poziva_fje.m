close all, clear, clc
% t = 0:.1:10;
% k = 1;
% tau = 1;
% figure(1), hold on, grid on


% for tau = 1:5
%     yy = sesta_nedelja(t, k, tau);
%     plot(t, yy(1, :), t, yy(2, :));
%     title(['T = ' num2str(tau)]);
%     pause(1);
% end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% numericki resavanje sistema jednacina
copruge = 1; masa = 1; cprigusivaca = 0;
[tt, yy] = ode45('sesta_nedelja', [0 5], [1 0]', [],  copruge, cprigusivaca, masa);

figure(1)
plot(tt, yy(:, 1), tt, yy(:, 2)), grid on

figure(2)
plot(yy(:, 1) , yy(:, 2))
axis equal, grid

% figure(3), hold on, grid
% for cprigusivaca = 0:0.2:1
%     [tt, yy] = ode45('sesta_nedelja', [0 20], [1 0]', [],  copruge, cprigusivaca, masa);
%     plot(tt, yy(:, 1));
%     pause(1)
% end

figure(3), hold on, grid
copruge = 1, cprigusivaca = 0, masa = 1;
for x01 = 0:0.2:1
    [tt, yy] = ode45('sesta_nedelja', [0 20], [x01 0]', [],  copruge, cprigusivaca, masa);
    plot(tt, yy(:, 1));
    pause(1)
end