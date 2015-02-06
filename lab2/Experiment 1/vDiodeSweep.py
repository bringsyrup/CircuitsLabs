#! /bin/env python
import smu
from numpy import logspace 

s = smu.smu()
v = logspace(-1, 0, 101)
f = open('vDiodeSweep.csv', 'w')
f.write('"I","V"\n')

#V = []
#I = []
for val in v:
    s.set_voltage(1, val)
    s.autorange(1)
    f.write('{!s},{!s}\n'.format(s.get_current(1), val))

s.set_voltage(1, 0.)
f.close()
