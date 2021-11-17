% function [xdot] = vezba(vreme, x, flag, u)
%     % prvi zadatak za dodatnu vezbu

%     xdot(1) = x(2);
%     xdot(2) = -5 * x(1) + u;

%     xdot = [xdot(1); xdot(2)];

% end

% function [xdot] = vezba(vreme, x, flag, a)
%     % drugi zadatak za dodatnu vezbu

%     if vreme < 1
%         u = vreme;
%     else 
%         u = 1;
%     end

%     xdot(1) = x(2);
%     xdot(2) = -2 * x(1) - a * x(2) + u;

%     xdot = [xdot(1); xdot(2)];

% end

function [xdot] = vezba(vreme, x)
    xdot(1) = x(2);
    xdot(2) = x(3);
    xdot(3)  = -x(1) - x(3) - x(3) + sin(vreme);

    xdot = [xdot(1); xdot(2); xdot(3)];
end