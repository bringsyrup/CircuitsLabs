#! /bin/env python
import smu
from numpy import logspace 

s = smu.smu()
I = logspace(-9, -2, 101)
f = open('diodeSweep.csv', 'w')
f.write('"V","I"\n')

#V = []
#I = []
for val in I:
    s.set_current(1, val)
    s.autorange(1)
    f.write('{!s},{!s}\n'.format(s.get_voltage(1), val))

s.set_voltage(1, 0.)
f.close()
