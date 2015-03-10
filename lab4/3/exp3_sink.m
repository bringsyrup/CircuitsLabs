clf
fontsize = 14;

Iz2_th = Ix1.^2 ./ .0009 
Iz3_th = Ix1.^2 ./ .00012
Iz4_th = Ix1.^2 ./ .000025

plot(Ix1, [Iz1_exp3, Iz2_exp3, Iz3_exp3], 'o'); hold on
plot(Ix1(1:96), Iz2_th(1:96), '-k')
plot(Ix1(1:90), Iz3_th(1:90), '-k')
plot(Ix1(1:85), Iz4_th(1:85), '-k')
title('Output Iz as a function of input Ix', 'fontsize', fontsize)
xlabel('Ix (A)', 'fontsize', fontsize)
ylabel('Iz (A)', 'fontsize', fontsize)