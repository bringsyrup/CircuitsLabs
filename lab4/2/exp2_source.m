clf
fontsize = 14;

%Iz2_th = (Ix1' .* ones(1,length(Ix1)).*.00124).^(.5)
%Iz3_th = (Ix1' .* ones(1,length(Ix1)).*.00016).^(.5)
%Iz4_th = (Ix1' .* ones(1,length(Ix1)).*.00002).^(.5)

plot(Ix1, [Iz1_2source, Iz2_2source, Iz3_2source], 'o'); hold on
%plot(Ix1, Iz1_th, '-k')
%plot(Ix1, Iz2_th, '-k')
%plot(Ix1, Iz3_th, '-k')
title('Output I_z as a function of input I_y', 'fontsize', fontsize)
xlabel('I_y (A)', 'fontsize', fontsize)
ylabel('I_z (A)', 'fontsize', fontsize)