%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%                                  %
%           Prvi kurs              %
%                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% ide row pa column
% ako imas sledecu situaciju [~, dv] = max(v2), ignorisace prvu vrednost, a druga koja sluzi za indeks ce biti popunjena. To je primena
% simbola tilda
% hold on - komanda da stopira prethodni plot i ako ima jos jedan plot da moze da doda na vec postojeci naredni
% hold off - da se prethodna komanda anulira
% plot(jedan_argument) - kada je ovakva situacija, plotuje sve iz y vektora, a za x osu koristi vrednosti od 1 do n
% gde je n broj elemenata vektora y
% fft() -> furijeova trans nad nekim vektorom; numel(y) -> broj elemenata vektora y
% -------------------------------------------------
% temperature conversion script
% function C = temp_convert(F)

%     C = ( F - 32 ) ./ 1.8000;

% end
% -------------------------------------------------
% function old_name = find_max_age(name, age)
%     [~, old_name_index] = max(age);
    
%     old_name = name(old_name_index);
% end
% -------------------------------------------------
