plot(Times, C1V, 'b', 'linewidth', 2)
hold on
plot(Times, C2V, 'r', 'linewidth', 2)
title('Unity Gain Follower with V_{in} at 500Hz and A = 100mV', 'fontsize', 16)
xlabel('time (s)', 'fontsize', 13)
ylabel('Voltage (V)', 'fontsize', 13)
legend('V_{in} (V)', 'V_{out} (V)')