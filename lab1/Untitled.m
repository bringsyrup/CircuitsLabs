x = V;
y = I;


plot(V, I, 'o')
[pf, S] = polyfit(x, y, 1);
[pv, delta] = polyval(pf, x, S);
xlabel('Voltage In')
ylabel('Current Measured')
title('Current-Voltage Characteristic of a 280 Ohm Resistor')