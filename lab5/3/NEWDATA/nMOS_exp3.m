f = 15
semilogy(V_D_5, I_5, 'o')
hold on
%semilogy(V_D_600mV, I_600mV, 'o')
semilogy(V_D_800mV, I_800mV, 'go')
semilogy(V_D_700mV, I_700mV, 'mo')

ylabel('I_{channel} (A)', 'fontsize', f)
xlabel('V_D (V)', 'fontsize', f)
%axis([5e-8, 5e-3, 0, 5e-5])
legend('SI, 5V', 'MI, 800mV', 'WI, 700mV', 'fontsize', f)
title('nMOS Drain Characteristic', 'fontsize', round(1.3*f))