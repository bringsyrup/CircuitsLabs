V1_fit = linspace(-0.011, .007, 100)
Vout_fit = V1_fit*250 + 3.5;

plot(V1_2V, Vout_filtered, 'o')
hold on
plot(V1_fit, Vout_fit, 'k-')
title('Voltage Transfer Characteristic with V_2 = 2V and V_b = 0.7V', 'fontsize', 16)
xlabel('V_1 (V)', 'fontsize', 13)
ylabel('V_{out} (V)', 'fontsize', 13)
legend('VTC data', 'VTC best fit')