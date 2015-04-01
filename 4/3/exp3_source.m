clf
fontsize = 14;

%Iz2_th = Ix1.^2 ./ .0009 
%Iz3_th = Ix1.^2 ./ .00012
%Iz4_th = Ix1.^2 ./ .000025

plot(Ix1, [Iz1_3source, Iz2_3source, Iz3_3source], 'o'); hold on
%plot(Ix1(1:96), Iz2_th(1:96), '-k')
%plot(Ix1(1:90), Iz3_th(1:90), '-k')
%plot(Ix1(1:85), Iz4_th(1:85), '-k')
title('Output I_z as a function of input I_y', 'fontsize', fontsize)
xlabel('I_y (A)', 'fontsize', fontsize)
ylabel('I_z (A)', 'fontsize', fontsize)