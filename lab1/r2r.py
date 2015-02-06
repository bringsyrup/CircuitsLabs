#! /bin/env python
import smu

s = smu.smu()
vin = 4.
f = open('r2r.csv', 'a')

s.autorange(1)
s.autorange(2)
s.set_voltage(2, 0.)
s.set_voltage(1, vin)
f.write('{!s}, {!s}\n'.format(vin, s.get_current(2)))

s.set_voltage(1, 0.)
s.set_voltage(2, 0.)
f.close()
