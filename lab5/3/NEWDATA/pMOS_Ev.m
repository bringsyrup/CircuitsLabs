Ev800 = 14.3008;
Ev700 = 13.0177;
Isat800 = 3.053e-6;
Isat700 = 5.264e-5;

semilogx(Ev800, Isat800, 'o', 'linewidth', 2)
hold on
semilogx(Ev700, Isat700, 'mo', 'linewidth', 2)
ylabel('E_A (V)', 'fontsize', f)
xlabel('I_{sat} (A)', 'fontsize', f)
axis([1.26e1, 1.5e1, -.00001, 6e-5])
legend('MI, 4.2V', 'WI, 4.3V')
title('pMOS Early Voltage', 'fontsize', round(1.3*f))