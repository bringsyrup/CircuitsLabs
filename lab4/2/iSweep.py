#! /bin/env python
#for each BJT, connect collector to 5V 
import smu
import numpy as np

s = smu.smu()
current = np.logspace(-9, -2, 101)
f = open('exp2.csv', 'w')
sweep_current = ['Ix', 'Iy']

for j in xrange(2): # two configurations, one where Ix is sweeping for three values of Iy, and one where Iy is sweeping for three values of Ix
    raw_input("Press enter when ready to sweep " + sweep_current[j])
    if j == 0:
        f.write('Sweeping current ' + str(sweep_current[j]) + ' for 3 values of ' + str(sweep_current[j+1]) + '\n')
    else:
        f.write('Sweeping current ' + str(sweep_current[j]) + ' for 3 values of ' + str(sweep_current[j-1]) + '\n')

    for i in xrange(3): # three values of non-sweeping input current determined by potentiometer
        raw_input("Press enter when ready to measure " + str(i + 1))
        f.write('Run ' + str(i+1) + ' for ' + str(sweep_current[j]) + ' sweep\n')

        if sweep_current[j] == 'Ix':
            f.write('Ix, Iz\n')
        else:
            f.write('Iy, Iz\n')

        for val in current:
            s.set_current(1, val)
            s.autorange(1)
            s.autorange(2)
            f.write('{!s},{!s}\n'.format(s.get_current(1), s.get_current(2)))

        s.set_voltage(1, 0.)
        s.set_voltage(2, 0.)

f.close()
