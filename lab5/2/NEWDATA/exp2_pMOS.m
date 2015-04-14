f = 15;
a = 6.887e-11;
b = 510.8;
fit =  a*exp(b*pV_S(150:end));
hold on
semilogy(pV_S, pI_channel, 'mo')
plot(pV_S(150:end), fit, 'k')
xlabel('V_S(V)', 'fontsize', f)
ylabel('I_{channel} (A)', 'fontsize', f)
axis([-.1, 5, 0, .05])
legend('Data', 'fit')
title('pMOS Source Characteristic', 'fontsize', round(1.3*f))