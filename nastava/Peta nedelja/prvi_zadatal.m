% pritisak p0 i pe su pritisci ciji odnos mi je bitan

k = 1.4;
odnos_pritisaka = 0.3;

psi = sqrt(k/(k-1)) * sqrt((odnos_pritisaka)^(2/k) - (odnos_pritisaka)^((k + 1)/k))

fprintf("Vrednost psi je %.4f \n", psi);