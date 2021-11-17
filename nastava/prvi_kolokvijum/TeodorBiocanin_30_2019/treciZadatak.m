function [xdot] = treciZadatak(t, x)

    u = 0; % u(t) je identicki jednak nuli za svako t na nekom intervalu

    xdot(1) = x(2);
    xdot(2) = -(pi^2) * x(1) + u;

    xdot = [xdot(1); xdot(2)];
end