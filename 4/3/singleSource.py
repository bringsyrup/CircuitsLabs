#! /bin/env python
import smu
import numpy
s = smu.smu()
Ixy = numpy.logspace(-8, -2, 200)
f = open('experiment2Source-1K.csv', 'w')
f.write('"Ix","Iz"\n')
s.set_voltage(2, 0.)
for val in Ixy:
    s.set_current(1, val*-1)
    s.autorange(1)
    s.autorange(2)
    f.write('{!s},{!s}\n'.format(val*-1, s.get_current(2)))
s.set_voltage(1, 0.)
s.set_voltage(2, 0.)
f.close()

