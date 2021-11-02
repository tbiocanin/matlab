% nastava za petu nedelju - kontrola toka i funkcije u matlaba
% commandwindow -> prebaci me u komandni prozor nakon izvrsenja programa
% if, switch, while, for

% proveriti sta su petlje sa izlaskom u sredini i petlja sa izlaskom na kraju

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% petlja sa izlaskom na pocetku
% Naci sumu n clanova nekog niza od 1 do N, a prirastaj tog niza je 1/n^2 koristeci while naredbu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% S = 0; eps = 1e-5; n = 1;

% while 1/n^2 > eps
%     S = S + 1/n^2;
%     n = n + 1;
% end

% fprintf(1, "Nakon %d iteracija suma ovog niza je S = %6.4f \n", n, S);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% for naredba
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Naci sumu kvadrata clanova neke matrice 

% suma = 0; matrica = magic(5); 

% [row, column] = size(matrica);

% for m = 1:row
%     for n = 1:column 
%        suma = suma + matrica(m, n)^2;
%     end
% end

% fprintf(1, "Suma kvadrata matrice je S = %d \n", suma);
% disp(['Suma kvadrata matrice je S = ' num2str(suma)]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% uslovna naredba -> 
                        % if uslov
                            % naredba1
                        % elseif
                            % naredba2
                        % else
                            % defaultNaredba
                        % end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% racunamo funkciju sign(x); ako je x veca od nule onda je y = 1; ako je x manje od nule onda je y = -1, a za x = 0 vazi y = 0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% x = input('Uneti vrednost za x: ');

% if x > 0
%     y = 1
% elseif x < 0
%     y = -1
% else 
%     y = 0
% end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% uzimamo vreme od 0 do 5 sekundi i prikazujemo razlicitu fju za razl vreme (linearizacija sistema)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% t = 1:.1:5;

% for k = 1:length(t)

%     if t(k) < 1
%         y(k) = 0;
%     elseif t(k) < 2
%         y(k) = 1;
%     elseif t(k) < 3
%         y(k) = 2;
%     else 
%         y(k) = 3;
%     end
% end

% plot(t, t, t, y, '--');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% break and continue naredbe u ciklicnim naredbama 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% program koji sa tastature ucitavamo 10 prirodnih brojeva koji su manji od 50 i da napravimo njihovu sumu

% suma = 0; n = 0; 

% % unos_prirodnog_broja = input('Uneti prirodni broj: ');

% while true 
%     unos_prirodnog_broja = input('Uneti prirodni broj: ');

%     if unos_prirodnog_broja <= 0 | unos_prirodnog_broja > 50
%         disp(['Broj nije prirodan ili je veci od 50']);
%         continue;
%     end

%     suma = suma + unos_prirodnog_broja;

%     % inkrementacija prom za proveru stanja u toku + njena provera
%     n = n + 1;
%     if n == 10
%         break;
%     end

% end

% disp(['Suma unetih 10 cifara je: ' num2str(suma)])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% naredba switch, case, otherwise
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
provera = 0;
% napisati program koji treba da ucita broj i da ispita da li je broj pozitivan, negativa ili je nula (modifikovano u odnosu na njegovo)
while true
    unos = input('Uneti neki proizvoljan broj: ');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% pripada verziji 1
    % if unos ~= 0
    %     break;
    % end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    if unos ~= 0
        tmp_delilac = abs(unos);

        provera = unos/tmp_delilac;
    end

    switch provera
        case -1
            fprintf("Broj %d je negativan \n", unos);
        case 1
            fprintf("Broj %d je pozitivan \n", unos);
        otherwise %druga verzija
            fprintf("Broj je nula \n");
    end

    jos_jedan_krug = input('Da li hoces jos jednom da proveris neki broj? [Y/N] ', 's'); %provera za nastavak rada programa

    %provera korisnickog unosa u verziji 2
    if jos_jedan_krug == upper('n')
        break;
    elseif jos_jedan_krug == upper('y')
        continue;
    else 
        fprintf("Nevalidan ulaz, izlaz iz programa!\n");
        break;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% verzija 1
% tmp_delilac = abs(unos);

% provera = unos/tmp_delilac;

% switch provera
%     case -1
%         fprintf("Broj %d je negativan \n", unos);
%     case 1
%         fprintf("Broj %d je pozitivan \n", unos);
% end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

