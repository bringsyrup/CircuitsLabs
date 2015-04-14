f = 15;
s = 3.2e-5;
s2 = 1.846e-3;
bb = -.002512.*pV_D_5E + .006657;
plot(pV_D_5, pI_5, 'o')

%hold on
%semilogy(pV_D_800mV, pI_800mV, 'go')
%hold on
%plot(pV_D_700mV, pI_700mV, 'mo')
%plot(pV_D_5E, pI_5E, 'o')
%plot(pV_D_5E, bb)

ylabel('I_{channel} (A)', 'fontsize', f)
xlabel('V_D (V)', 'fontsize', f)
%axis([5e-8, 5e-3, 0, 5e-5])
legend('SI, 0V', 'MI, 4.2mV', 'WI, 4.3mV')
title('pMOS Drain Characteristic', 'fontsize', round(1.3*f))