clf
fontsize = 14;

Iz2_th = (Ix1.^2) / .000000001 
%Iz3_th = (Ix1^2 ./ ones(1,length(Iz2)).*.00016)
%Iz4_th = (Ix1^2 ./ ones(1,length(Iz2)).*.00002)

loglog(Ix1, [Izwith15M, Izwith301k, Izwith47k], 'o'); hold on
plot(Ix1, Iz2_th, '-k')
%plot(Ix1, Iz3_th, '-k')
%plot(Ix1, Iz4_th, '-k')
title('Output Iz as a function if input Ix', 'fontsize', fontsize)
xlabel('Ix (A)', 'fontsize', fontsize)
ylabel('Iz (A)', 'fontsize', fontsize)