x = [0.25];
iterator = 1;
n = 0:5:200;

while iterator <= 200

    x(iterator+1) = x(iterator)^2 + 0.25;

    iterator = iterator + 1;
end

x_konacno = x(1:5: end );
plot( n, x_konacno, 'ks' );

%%%%%%%%%%%%%%Provera samo%%%%%%%%%%%%%%
% length(x_konacno);
% length(0:5:200);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%