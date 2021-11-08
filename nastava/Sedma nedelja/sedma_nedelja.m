%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Sedma nedelja nastave - optimizacija koda, vezbanje pred klk
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% razlika izmedju kompajlera, editora i interpretatora
% nakon kompajliranja, ako nema gresaka onda dobijamo objektni fajl
% onda sledi linkovanje izmedju objektnog fajla i .lib fajla i onda on formira .exe fajl
% clear all, clc

% disp('Bez prealokacije')
% tic
% x = 0;

% for k = 2:5e4
%     x(k) = x(k-1) + 5;
% end
% toc

% clear all
% disp('Prealokacija')

% tic
% x = zeros(1, 5e4); %uzimamo konzistentan deo memorije u samom pocetku 

% for k = 2:5e4
%     x(k) = x(k-1) + 5;
% end
% toc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                        % Vektorizacija 1D
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% k = 0;
% disp('for petlja');
% tic
% y = zeros(size(0:0.01:200));

% for vreme = 0:0.01:200
%     k = k + 1;
%     y(k) = sin(vreme);
% end
% toc

% disp('Vektorizacija');

% % clear all, clc
% tic
% t = 0:0.01:200;
% y = sin(t);
% toc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                        % Vektorizacija 2D
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% x = 0:0.05:50;
% y = 0:0.05:50;

% disp('Standardni programerski pristup')
% tic
% for k = 1:length(x)
%     for l = 1:length(y)
%         z(k, l) = sin(x(k)) * cos(y(l));
%     end
% end
% toc

% disp('Dvodimenzionalna prealokacija');

% clear z; %s razlogom uklanjamo z 
% z = zeros(length(x), length(y));

% tic 
% for k = length(x)
%     for l = length(y)
%         z(k, l) = sin(x(k)) * cos(y(l));
%     end
% end
% toc

% disp('Vektorizacija 2D');
% clear z
% tic
% [xx, yy] = meshgrid(x, y);
% z = sin(xx) .* cos(yy);
% toc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                % for petlja: vrste vs kolone
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% N = 1e4;
% disp('Po vrstama');
% % prva petlja radi vrste, a druga radi kolone
% tic

% H = zeros(N);
% for k = 1:N 
%     for l = 1:N 
%         H(k, l) = k * l;
%     end
% end

% toc

% tic

% disp('Po kolonama');
% % prva petlja ce raditi kolone, a druga radi vrste
% % zbog promene algoritama, brze ce biti po kolonama prolaziti kroz matricu unutar ugnjezdene for petlje
% % truditi se da radim po kolonama ubuduce zbog optimalnijeg rada programa
% clear H;
% H = zeros(N);
% for k = 1:N 
%     for l = 1:N 
%         H(l, k) = k * l;
%     end
% end

% toc

function [xdot] = sedma_nedelja(vreme, x)

    if vreme < 15
        ulaz = 1;
    elseif vreme < 30
        ulaz = -1;
    else
        ulaz = 0;
    end

    xdot(1) = x(2);
    xdot(2) = -5 * x(1) - x(2) + ulaz;

    xdot = [xdot(1); xdot(2)];

end