semilogy(V10mV, I10mV, 'bo')
hold on
semilogy(V10mV, Ip10mV, 'go')
semilogy(V10mV, Is10mV, 'mo')
xlabel('Gate Voltage (V)', 'fontsize', 13)
ylabel('Channel Current (A)', 'fontsize', 13)
title('Series, Parallel, and Individual at 10mV', 'fontsize', 15)
legend('Individual', 'Parallel', 'Series')