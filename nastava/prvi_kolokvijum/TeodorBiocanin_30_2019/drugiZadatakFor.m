x = [];
n = 0:5:200;
for iterator = 0:200

    if iterator == 0
        x(iterator + 1) = 0.25;
        continue;
    end

    x(iterator+1) = x(iterator)^2 + 0.25; 
end

x_konacno = x(1:5: end );
figure(2)
plot( n, x_konacno, 'ks' );

%%%%%%%%%%%%%%Provera samo%%%%%%%%%%%%%%
% length(x_konacno);
% length(0:5:200);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%