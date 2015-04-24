plot(Times1, C1V1, 'b', 'linewidth', 2)
hold on
plot(Times1, C2V1, 'r', 'linewidth', 2)
title('Unity Gain Follower with V_{in} at 500Hz and A = 1V', 'fontsize', 16)
xlabel('time (s)', 'fontsize', 13)
ylabel('Voltage (V)', 'fontsize', 13)
legend('V_{in} (V)', 'V_{out} (V)')
