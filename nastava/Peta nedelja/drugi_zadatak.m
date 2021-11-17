n = 0:7;

a = 2 .* n - 1;
b = 2 .* n + 1;


suma = a + b
razlika = a - b
proizvod = a' * b 
determinanta = det(proizvod)
proizvod2 = a * b'

suma = 0;
% for indx = 1:length(n)
suma = 1/(length(n)) * sum(a.^2 + b.^2);
% end

suma