%treca nedelja - drugo predavanje
%matrice, kontrola toka, fje itd. Ali je naglasak na matricama u pocetku
%uvodne stvari, editor, promenlljive, whos
%ime_promenljive ili ImePromenljive -> dve notacije koje su standard za slozena imena promenljivih
%nti koren --> 

%%%%%%%%%%%%%%%%%%%%%%%%%%
% a = 12.54; c = -3.35; b = 3;

% d = ( a- 3*c )^( 1/b )

%matrice i vektori 

%%%%%%%%%%%%%%%%%%%%%%%%%%
%sintaksa 
% A = [1:3; 0 -1 2; -2 0 3]

% [kolone, vrsta] = size(A)

% B = zeros(3,2)

%%%%%%%%%%%%%%%%%%%%%%%%%%
%matrica koja ima samo clanove po glavnooj dijagonali se zove dijagonalna matrica
%primer

% D = diag([1 2 3])

%%%%%%%%%%%%%%%%%%%%%%%%%%
%jedinicna matrica, jos jedan specijalni slucaj
% primer i sintaksa
% JedMat = eye(5)
%%%%%%%%%%%%%%%%%%%%%%%%%%
%vektori%
%u notaciji na papiru, mi ga podvlacimo (samo da se ne zbunis)
%primer 
% t = 0:0.1:10;

% velicina = length(t)

%prirastaj moze biti i negativan
% t1 = linspace(0, 10, 10); % -> linearna podela nekog intervala od 1 do 10 na deset delova
% t2 = logspace(0.1, 1, 10) % -> logaritamska podela

%neki novi primer
%t1(1:2:9) = 4 %primer kako mogu da pristupim elementima vektora ili matrica
%za kraj mogu da kazem length() ili end
% isto mogu da uradim na jos jedan nacin
% novi_vektor = [1 3 5 7 9]; y = t1(novi_vektor)
%%%%%%%%%%%%%%%%%%%%%%%%%%
%sortiranje ovog niza
%fja sort(ime_niza, 'descend' ili rastuce) -> rastuci niz kada se koristi ova fja je default 
%obrtanje niza sa fjom fliplr(ime_niza)

%trazenje negativnih elemenata
% index = find(t1);
% negativne_vrednosti = t1(index)

% x1 = [0:4]
% x2 = [1:0.25:2]
% x3 = [11 22 33 44 55]

% A = [ x1; x2; x3 ]
% A1 = [ x1' x2' x3']

% A(:, 2) % sve vrste, druga kolona
% A(2, :) % druga vrsta, sve kolone

% izbacivanje neke kolone ili vrste -> definisemo praznu matricu
% A( : , 2) = []
% A( : , 1:3) = []
%%%%%%%%%%%%%%%%%%%%%%%%%%
%primer -> hocemo da crtamo kvadratnu fju, poenta je primena dot operatora pri mnozenju matrica
% x = 0:7; y = x.^2;
% plot(x, y, 'd-');

% malo drugacije da uradimo, stepena fja
% x = 0:7; y = 2.^x;
% plot(x, y, 'd-')

% trazimo fju y(t) = t^2 * (e ^ (-t/2)) * sin(3t + pi/8); primer za nas

% t = 0:.1:10; y = t.^2 .* ( exp( -t / 2 ) ) .* sin(3*t + pi/8);

% plot(t, y, 'd-')

% Euklidska norma - intezitet vektora (to se ocigledno zovu norme)
% x = (x1 x2 x3)^T
% x = [1 2 3]
% norma = sum(x.^2)^0.5 
% norma2 = sqrt(sum(x.^2))
% norma3 = norm(x) % -> tri nacina za jednu istu stvar; pogledati help norm i objasnjenja
%%%%%%%%%%%%%%%%%%%%%%%%%%
% matematicke operacije nad matricama

% A = [1 2 0; 0 3 5]
% % B = A'
% B = [-1 0 -2; -3 -5 0]

% sumaMatrica = A + B
% skalarMatrica = A*2

% Ako imamo matricu A koja je m x n i ako je matrica B l x k. Ako hocemo da napravimo matricu C koja je A * B, 
% vazice uslov n = l. Novonastala matrica ce imati m vrsta i k kolona

% Cij = suma od mi = 1 (a_i_mi skalarno mnozenje b_mi_j)

% (A*B)^T = B^T * A^T
% A*B = B*A = I (jedinicna matrica)
% tada vazi B = A^-1

% A = [1 2; 0 3];
% det(A)

% znaci mozemo da trazimo inverznu matricu
% inv(A)

%%%%%%%%%%%%%%%%%%%%%%%%%%
% primer vezan za sopsvetene matrice i sopstvene vrednosti
% A = [0 1; -6 -5];
% eig(A)