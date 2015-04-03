clf
fontsize = 14;


Iz2_th = 5 / -1*Ix_small; 
%Iz3_th = (Ix1^2 / .00016)
%Iz4_th = (Ix1^2 / .00002)


%plot(Ix_small, [Iz_small, Iz_med, Iz_large], 'o'); hold on
plot(Ix_small, Iz2_th, '-k')
%plot(Ix_small, Iz3_th, '-k')
%plot(Ix_small, Iz4_th, '-k')
title('Output Iz as a function of Input Ix', 'fontsize', fontsize)
xlabel('Ix (A)', 'fontsize', fontsize)
ylabel('Iz (A)', 'fontsize', fontsize)