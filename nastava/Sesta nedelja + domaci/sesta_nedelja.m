% detalj koji pokazuje sada

% zamena za moj for u for-u, isti je izlaz
% A = magic(5);
% % diag(diag(A));
% A = A - diag(diag(A)) + 2 * eye(5);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Funkcije                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% function zbir = sesta_nedelja(sabirak1, sabirak2)
%     % zbir dva neka broja, imam dva ulaza, jedan izlaz
%     % taj izlaz je zbir ta dva ulaza
%     zbir = sabirak1 + sabirak2;
% end

% function izlaz = sesta_nedelja(vreme, k, tau)
%     % y(t) = k(1 - e^(-t/tau))
%     % racunaj prvi izvod dy(t) = ke^(-t/tau)

%     y = k * (1 - exp(-vreme/tau));
%     ydot = k * exp(-vreme/tau);
%     izlaz = [y; ydot];
% end

function [xdot] = sesta_nedelja(vreme, x, flag, copruge, cprigusivaca, masa)
    % F = 1;
    if vreme < 5
        F = 1;
    else 
        F = 0;
    end
    xdot(1) = x(2);
    xdot(2) = -copruge/masa*x(1) - cprigusivaca/masa * x(2) + 1/masa * F;
    xdot = [xdot(1); xdot(2)];
end
