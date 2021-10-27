% ovo je vezano za funkcije i kontrolu toka u programu. Primeri su iz knjiga 

% while/for naredba i primer jedne konvergentne sume, prirastaj mora da bunje manji od 1e-5 (to je uslov zapravo)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                               %
%             S = suma_od1_doN(1/n^2)           %
%                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% n = 1; S = 0; eps = 1e-5

% while 1/n^2 > eps
%     S = S + 1/n^2;
%     n = n + 1;
% end

% fprintf(1, "Suma %d lemenata je S = %6.4f\n", n, S);

% primer for petlje kako bi se sracunala suma kvadrata matrice MxN

% matrica_A = magic(5); % napravi mi matricu 5x5
% [m, n] = size(matrica_A); % daj mi dimenzije matrice

% % inicijalizacija sume matrice
% S = 0;

% for k = 1:m
%     for l = 1:n 
   
%         S = S + matrica_A(k, l)^2; % azuriraj vrednost sume sa kvadratom trenutnog clana
   
%     end
% end

% % prikaz rezultata na ekran
% fprintf("Suma kvadrata matrice dimenzije %d x %d je S = %d \n", m, n, S); 

% if naredba; Recimo uzmemo fju signum x i onda proveravamo kakav ce biti izlaz zavisno od vrednosti za x
% ako je x > 0 reci cemo sin(x)
% ako je x < 0 reci cemo cos(x)
% ako je x = 0 onda cemo da odstampamo neku recenicu na ekran kako bismo samo videli primenu elseif naredbe u svemu ovome

x = input('Unesi proizvoljnu celobrojnu vrednost za x: ', 's');

tmp_x = str2num(x);

while true
    
    if x == 'Stop'
        break;
    end

    if str2num(x) > 0
        tmp_x = linspace(1, 2*pi, 10);
        y = sin(x);
        plot(tmp_x, y, 'd--');
    elseif str2num(x) < 0
        tmp_x = linspace(1, 2*pi, 10);
        y = cos(x);
        plot(tmp_x, y, '--');
    else 
        disp(['Uneta vrednost je nula i nece se prikazati nikakav grafik'])
    end

end