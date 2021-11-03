n = 0:7;
a = 2 * n + 1;
b = 2 * n - 1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% suma i razlika vektora a i b
suma = a + b;
razlika = a - b;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% proizvod a'b i vektor determinante
proizvod = a' .* b;
determinanta = det(proizvod);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% proizvod ab'
proizvod2 = a .* b';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sumu S = 1/n * sum(a^2 + b^2)
suma = 1./n .* sum(a.^2 + b.^2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Poslednji zadatak
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
A = magic(5);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% drugu kolonu podeliti sa sqrt(3)
A(:, 2) = A(:, 2) / sqrt(3);
A(5, :) = A(3, :) + A(5, :);
A(:, 1) = A(:, 1) .* A(:, 4);


[row, column] = size(A);

for iterator_row = 1:row
    for iterator_column = 1:column
        if iterator_row == iterator_column
            A(iterator_row, iterator_column) = 2;
            % break;
        end
    end
end

Q = A;
diag(Q*Q');

Q = Q.^2