#! /bin/env python
#for each BJT, connect collector to 5V 
import smu
from numpy import logspace
import sys, select

s = smu.smu()
current = logspace(-9, -2, 101)
f = open('exp2take3.csv', 'w')
sweep_current = ['Ix', 'Iy']

def test_source():
    raw_input("Press enter when ready to set V_in with channel 2")
    s.set_current(1, .001) #set input current to 1mA
    s.set_current(2, 0.)
    s.autorange(1)
    s.autorange(2)

    while True:
        print s.get_voltage(2)
        if sys.stdin in select.select([sys.stdin], [], [], 0)[0]:
            line = raw_input()
            break
    s.set_voltage(1, 0.)
    s.set_voltage(2, 0.)

for j in xrange(2): # two configurations, one where Ix is sweeping for three values of Iy, and one where Iy is sweeping for three values of Ix
    raw_input("Press enter when ready to begin testing for input " + sweep_current[j])
    if j == 0:
        source_index = j+1
        f.write('Sweeping current ' + str(sweep_current[j]) + ' for 3 values of ' + str(sweep_current[j+1]) + '\n')
    else:
        source_index = j-1
        f.write('Sweeping current ' + str(sweep_current[j]) + ' for 3 values of ' + str(sweep_current[j-1]) + '\n')

    test_source()
    
    for i in xrange(3): # three values of source current determined by potentiometer

        raw_input("Press enter to measure trial " + str(i + 1))
        f.write('Trial ' + str(i + 1) + ' for input current ' + str(sweep_current[j]) + '\n')
        f.write(str(sweep_current[j]) + ', Iz\n')

        for val in current:
            s.set_current(1, val)
            s.autorange(1)
            s.autorange(2)
            f.write('{!s},{!s}\n'.format(s.get_current(1), s.get_current(2)))

        s.set_voltage(1, 0.)
        s.set_voltage(2, 0.)

f.close()
