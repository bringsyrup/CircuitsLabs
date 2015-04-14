I1minI2 = I_1 - I_2;
I1pluI2 = I_1 + I_2;

plot(V_1, I_1, 'o')
hold on
plot(V_1, I_2, 'mo')
plot(V_1, I1minI2, 'go')
plot(V_1, I1pluI2, 'ro')

legend('I_1', 'I_2', 'I_1 - I_2', 'I_1 + I_2')
title('Differential pair currents with V_b = 1.3V and V_2 = 4V', 'fontsize', 16)
xlabel('V_1 - V_2 (V)', 'fontsize', 13)
ylabel('Current (A)', 'fontsize', 13)