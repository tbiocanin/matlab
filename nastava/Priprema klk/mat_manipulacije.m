clc, format long
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% n1 = [1:5]; n2 = [1:15]; n3 = [1:30];

% pokazati da suma konvergira ka broju 6

% prva_suma = n1.^2 ./ 2.^n1;
% druga_suma = n2.^2 ./ 2.^n2;
% treca_suma = n3.^2 ./ 2.^n3;

% s1 = sum(prva_suma)
% s2 = sum(druga_suma)
% s3 = sum(treca_suma)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% n1 = [0:5]; n2 = [0:15]; n3 = [0:25];
% x = 2; % posluzice kasnije za poredjenje
% poredbena_vrednost = exp(x)
% prvi_vektor = x.^n1 ./ factorial(n1);
% drugi_vektor = x.^n2 ./ factorial(n2);
% treci_vektor = x.^n3 ./ factorial(n3);

% prva_suma = sum(prvi_vektor)
% druga_suma = sum(drugi_vektor)
% treca_suma = sum(treci_vektor)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% tmp_provera = -sqrt(3)/6
% x = pi/3 + [-0.1 -0.01 -0.0001 0.0001 0.01 0.1];
% y = (sin(x - pi/3))/(4 .* (cos(x)).^2 - 1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% tmp_provera = 7.5
% x = [1.0 0.1 0.01 0.0001];
% y = (5 * sin(6 * x)) ./ (4 * x)