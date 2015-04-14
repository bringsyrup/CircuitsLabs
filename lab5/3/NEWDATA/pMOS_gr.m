IS = 1.9633e-06; 
UT = .025;
f = 15;
Isat700 = 5.264e-5;
Isat800 = 3.053e-6;
gr700 = (3.8491e5*(1 - exp(-sqrt(Isat700/IS)))).*sqrt(IS.*Isat700)/UT
gr800 = (3.90625e5*(1 - exp(-sqrt(Isat800/IS)))).*sqrt(IS.*Isat800)/UT
%gr5 = (1 - exp(-sqrt(Isat5/IS))).*sqrt(IS.*Isat5)/UT

loglog(Isat700, gr700, 'o', 'linewidth', 3)
hold on
loglog(Isat800, gr800, 'mo', 'linewidth', 3)
%loglog(Isat5, gr5, 'go', 'linewidth', 3)
ylabel('g_sr_o', 'fontsize', f)
xlabel('I_{sat} (A)', 'fontsize', f)
%axis([5e-8, 5e-3, 0, 5e-5])
legend('WI, 4.3V', 'MI, 4.2V')
title('pMOS Intrinsic Gain', 'fontsize', round(1.3*f))