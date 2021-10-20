% cetvrta_nedelja
% ==============================================
% stringovi (alfanumericki karakteri)

% s = 'masinski fakultet';
% s(10:17);

% %kombinacija neka
% snaga = 2.3333; disp(['Snaga masine je: ' num2str(snaga) 'kW']); %formatiranje ispisa
% disp(['Snaga masine je: ' num2str(snaga, 3) 'kW']) 

% druga fja za formatiranje 
% fprintf()

% br = 3; p = 210; t = 293.7;
% fprintf(1, 'br.merenja: %d \npritisak: %3.0f \ntemperatura je: %5.1f \n', br, p, t); % moras da predvidis sirinu polja
% znaci, imas 3 br pre tacke, tacku (+1) i jednu decimalu posle, zato je sirina 5, a br dec 1

% ulaz od korisnika -> koriscenje fje input

% ime = input('Uneti neki tekst, recimo ime: ' , 's');
% ==============================================
% plotovanje podataka

% plotovanje jedne tacke
% plot(2, 1) % kada pozoves fju figure(n) on ti povuce n-ti grafik koji si koristio jer se oni uvek definisu sa Figure 1
% figure(1)

% plot([2, 4], [1, 3], 'd-'); 

% crtanje kruznice
% x = rcosfi + Xc
% y = rsinfi + Yc

% ugao_fi = linspace(0, 2*pi, 36);
% % poteg = 3; 
% % pravimo sada familiju fja
% poteg = 1:5;

% x = cos(ugao_fi)' * poteg;
% y = sin(ugao_fi)' * poteg; %transponujemo kako bismo dimenziono ispunili uslov oko mnozenja matrica i da bismo prikazali to na ekranu

% % plot(x, y)
% % mozemo da pravimo familiju krivih tako sto navedemo da je prvi argument plot() f-je vektor, drugi matrica

% axis equal %formatiranje tako da ti grafik zapravo lici na nesto
% ==============================================
% primer y(t) = 1-e^(t/2), ali t ide od 1 do 5

% t = 0:0.1:10;
% tau = 0;
% y = 1-exp(-t/tau);
% plot(t, y);
% hold on
% ==============================================
% moja verzija ovog primera koristeci petlje kako ne bi moralo da se manualno menja vrednost promenljive tau
% for tau = 1:10
%     y = 1-exp(-t/tau);
%     plot(t, y);
%     hold on
% end

% while tau <= 10
%     y = 1-exp(-t/tau);
%     plot(t, y);
%     hold on

%     tau = tau + 1;
% end
% axis equal
% ==============================================
% izvod
% t = 0:0.1:10;
% y = sin(t);

% izvod_sinusa = diff(y) ./ diff(t);

% plot(t, y, t(1:end-1), izvod_sinusa);
% ==============================================
% prosirenje zadatka 
% t = 0:0.1:10;
% K = 1; tau = 1;

% y = K * ( 1 - exp( -t/tau ) );
% y_derivative = K/tau *exp(-t/tau);

% plot(t, y, t, y_derivative);

% title('Odziv sistema prvog reda', 'fontname', 'times', 'fontsize', 16);
% xlabel('$Vreme [s]$', 'interpreter', 'latex');
% ylabel('$y(t)$, $\dot{y}(t)$', 'interpreter', 'latex');
% % ylabel('y(t), $ \frac{dy}{dt} $', 'interpreter', 'latex', 'fontsize', 24);

% grid
% % vreme potrebno da sistem dostigne 63% u stacionarnom stanju -> vremenska konstanta
% index = min(find(y>= 0.63 * y(end)));

% hold on
% plot([t(1) t(index)], [y(index) y(index)], 'r:.') % horizontalna linija
% plot([t(index), t(index)], [y(1) y(index)], 'r:.') % vertikalna linija

% ispis = sprintf('\\tau = %0.2f sec', t(index));
% text(t(index)+0.5, y(index), ispis)

% ==============================================
% 3D grafika

% t = 0:pi/50:10*pi; plot3(sin(t), cos(t), t); % dakle plot3() fja je za prikazivanje u tri dimenzije neke fje
% ==============================================
% crtanje povrsina -> primer: z = sin(x) * cos(y)

% x = linspace(-10, 10, 50);
% y = linspace(-10, 10, 50);

% % komanda za plotovanje sada
% [xx, yy] = meshgrid(x, y);

% z = sin(xx) .* cos(yy);

% figure(1);
% mesh(xx, yy, z); grid;
% figure(2);
% % surf(xx, yy, z); grid;
% surfc(xx, yy, z); grid;
% shading interp
% colorbar('vertical')
% dva nacina sa kojima mozemo da pokazemo 3d povrsi; dakle, koriscenje fje surf ili mesh
% ==============================================
% vezbanje