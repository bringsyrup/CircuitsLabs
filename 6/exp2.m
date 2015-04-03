clc; clf;
% hold all;
% plot(V_NMOS21_5V, I_NMOS21_5V, 'r-');
% plot(V_NMOS21_5V, I_NMOS2s_5V, 'g-');
% plot(V_NMOS21_5V, I_NMOS2p_5V, 'b-');
% 
% plot(V_NMOS21_10mV, I_NMOS21_10mV, 'r-');
% plot(V_NMOS21_10mV, I_NMOS2s_10mV, 'g-');
% plot(V_NMOS21_10mV, I_NMOS2p_10mV, 'b-');
% 
% title('Comparison of single, series-configured and parallel-configured MOSFETS at 5V', 'FontSize', 14);
% legend('Single MOSFET', 'Series Configuration', 'Parallel Configuration');
% xlabel('Gate Voltage (V)', 'FontSize', 14);
% ylabel('Channel Current (A)', 'FontSize', 14);

p_ratio_5V = I_NMOS2p_5V ./ I_NMOS21_5V;
p_ratio_10mV = I_NMOS2p_10mV ./ I_NMOS21_10mV;
s_ratio_5V = I_NMOS21_5V ./ I_NMOS2s_5V;
s_ratio_10mV = I_NMOS21_10mV ./ I_NMOS2s_10mV;

hold all;
plot(V_NMOS21_5V, s_ratio_5V);
plot(V_NMOS21_10mV, s_ratio_10mV);
title('Ratio of Individual Configuration vs Series Configuration', 'FontSize', 14);
legend('Individual/Series - 5V', 'Individual/Series - 10mV');
xlabel('Gate Voltage (V)', 'FontSize', 14);
ylabel('Channel Current (A)', 'FontSize', 14);


