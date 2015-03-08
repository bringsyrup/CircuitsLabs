#! /bin/env python
#for each BJT, connect collector to 5V 
import smu
from numpy import logspace
import os, sys, select

s = smu.smu()
current = logspace(-9, -2, 101)
f = open('exp2.csv', 'w')
sweep_current = ['Ix', 'Iy']

def test_source(trial):
    raw_input("Press enter when ready to test source current " + str( sweep_current[source_index]) + ' with channel 2 for trial ' + str(trial))
    s.set_current(1, .001) #set input current to 1mA
    s.autorange(1)
    s.autorange(2)

    while True:
        source_current = s.get_current(2)
        print source_current
        if sys.stdin in select.select([sys.stdin], [], [], 0)[0]:
            line = raw_input()
            break
    s.set_voltage(1, 0.)
    s.set_voltage(2, 0.)
    return source_current

for j in xrange(2): # two configurations, one where Ix is sweeping for three values of Iy, and one where Iy is sweeping for three values of Ix
    raw_input("Press enter when ready to begin testing for input " + sweep_current[j])
    if j == 0:
        source_index = j+1
        f.write('Sweeping current ' + str(sweep_current[j]) + ' for 3 values of ' + str(sweep_current[j+1]) + '\n')
    else:
        source_index = j-1
        f.write('Sweeping current ' + str(sweep_current[j]) + ' for 3 values of ' + str(sweep_current[j-1]) + '\n')

    for i in xrange(3): # three values of source current determined by potentiometer
        source_current = test_source(i + 1)

        raw_input("Press enter to measure trial " + str(i + 1) + ' for input current ' + str(source_current))
        f.write('Trial ' + str(i + 1) + ' for input current ' + str(sweep_current[j])+ ' and source current ' + str(source_current) + '\n')
        f.write(str(sweep_current[j]) + ', Iz\n')

        for val in current:
            s.set_current(1, val)
            s.autorange(1)
            s.autorange(2)
            f.write('{!s},{!s}\n'.format(s.get_current(1), s.get_current(2)))

        s.set_voltage(1, 0.)
        s.set_voltage(2, 0.)

f.close()
