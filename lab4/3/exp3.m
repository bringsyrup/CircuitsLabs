clf
fontsize = 14;

Iz2_th = (Ix1' .* ones(1,length(Iz2)).*.00124).^(.5)
Iz3_th = (Ix1' .* ones(1,length(Iz2)).*.00016).^(.5)
Iz4_th = (Ix1' .* ones(1,length(Iz2)).*.00002).^(.5)

plot(Ix1, [Iz2, Iz3, Iz4], 'o'); hold on
plot(Ix1, Iz2_th, '-k')
plot(Ix1, Iz3_th, '-k')
plot(Ix1, Iz4_th, '-k')
title('Output Iz as a function if input Ix', 'fontsize', fontsize)
xlabel('Ix (A)', 'fontsize', fontsize)
ylabel('Iz (A)', 'fontsize', fontsize)