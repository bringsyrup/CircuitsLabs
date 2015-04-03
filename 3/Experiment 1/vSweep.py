#! /bin/env python
import smu

def linspace(initial, final, n = 100):
    if n>=2:
        increment = (float(final) - float(initial))/(n - 1)
        return [float(initial) + i*increment for i in range(n)]
    else:
        return []

s = smu.smu()
v = linspace(0.4, 0.71, 101)
f = open('bjt.csv', 'w')
f.write('"Vb","Ib","Ie"\n')

for val in v:
    s.set_voltage(1, val)
    s.autorange(1)
    s.autorange(2)
    f.write('{!s},{!s},{!s}\n'.format(val, s.get_current(1), s.get_current(2)))

s.set_voltage(1, 0.)
s.set_voltage(2, 0.)
f.close()
