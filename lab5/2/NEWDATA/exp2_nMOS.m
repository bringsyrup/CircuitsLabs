f = 15;
a = 3.15e+48;
b = -35.31;
fit =  a*exp(b*V_S(130:end));
hold on
plot(V_S, I_channel, 'mo')
plot(V_S(130:end), fit, 'k')
xlabel('V_S(V)', 'fontsize', f)
ylabel('I_{channel} (A)', 'fontsize', f)
axis([0, 5, 0, .05])
legend('Data', 'fit')
title('nMOS Source Characteristic', 'fontsize', round(1.3*f))