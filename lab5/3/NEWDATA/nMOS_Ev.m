Ev5 = -71.6784;
Ev800 = -281.6;
Ev700 = -97.9053;
Isat5 = .0076;
Isat800 = 1.8778e-5;
Isat700 = 6.4519e-6;
semilogx(Ev5, Isat5, 'o', 'linewidth', 2)
hold on
semilogx(Ev800, Isat800, 'mo', 'linewidth', 2)
semilogx(Ev700, Isat700, 'go', 'linewidth', 2)
ylabel('E_A (V)', 'fontsize', f)
xlabel('I_{sat} (A)', 'fontsize', f)
axis([-1e3, -1e1, -.001, 8e-3])
legend('SI, 5V', 'MI, 800mV', 'WI, 700mV')
title('nMOS Early Voltage', 'fontsize', round(1.3*f))