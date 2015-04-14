semilogy(V5V, I5V, 'bo')
hold on
semilogy(V5V, Ip5V, 'go')
semilogy(V5V, Is5V, 'mo')
semilogy(V10mV, I10mV, 'b.')
semilogy(V10mV, Ip10mV, 'g.')
semilogy(V10mV, Is10mV, 'm.')

xlabel('Gate Voltage (V)', 'fontsize', 13)
ylabel('Channel Current (A)', 'fontsize', 13)
title('Series, Parallel, and Individual at 10mV and 5V', 'fontsize', 15)
legend('Individual 5V', 'Parallel 5V', 'Series 5V', 'Individual 10mV', 'Parallel 10mV', 'Series 10mV')