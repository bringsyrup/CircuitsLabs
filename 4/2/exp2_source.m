clf
fontsize = 14;

Iz1_th = (Iy *-.0018).^(.5)
Iz2_th = (Iy *-.00016).^(.5)
Iz3_th = (Iy *-.000016).^(.5)
plot(Iy, [-1.*Iz1_2source, -1.*Iz2_2source, -1.*Iz3_2source], 'o'); hold on
plot(Iy, Iz1_th, '-k')
plot(Iy, Iz2_th, '-k')
plot(Iy, Iz3_th, '-k')
title('Output I_z as a function of input I_y', 'fontsize', fontsize)
xlabel('I_y (A)', 'fontsize', fontsize)
ylabel('I_z (A)', 'fontsize', fontsize)