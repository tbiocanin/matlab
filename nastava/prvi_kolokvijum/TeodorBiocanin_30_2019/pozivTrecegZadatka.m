clc, clear all
figure(1), hold on
grid
xlabel('t');
ylabel('x(t)')
title('Simulacija diferencijalne jednacine treceg zadatka')
for x1 = 0:5
    [tt, xx] = ode45('treciZadatak', [0 20], [x1 0]');
    plot(tt, xx(:, 1));
    % legend('x1 = 0', 'x1 = 1', 'x1 = 2', 'x1 = 3', 'x1 = 4', 'x1 = 5')
    pause(1);
end
legend('x1 = 0', 'x1 = 1', 'x1 = 2', 'x1 = 3', 'x1 = 4', 'x1 = 5')
figure(2), hold on
for x1 = 0:5
    [tt, xx] = ode45('treciZadatak', [0 20], [x1 0]');
    plot(tt, xx(:, 1));
    % legend('x1 = 0', 'x1 = 1', 'x1 = 2', 'x1 = 3', 'x1 = 4', 'x1 = 5')
    pause(1);
end
legend('x1 = 0', 'x1 = 1', 'x1 = 2', 'x1 = 3', 'x1 = 4', 'x1 = 5')
