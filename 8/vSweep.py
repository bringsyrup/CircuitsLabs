#! /bin/env python
#for each BJT, connect collector to 5V 
import smu

def linspace(initial, final, n = 100):
    if n>=2:
        increment = (float(final) - float(initial))/(n - 1)
        return [float(initial) + i*increment for i in range(n)]
    else:
        return []

s = smu.smu()
v = linspace(0, 5, 150)
f = open('exp3_offset.csv', 'w')
f.write('V1, Vout\n')
s.set_current(2, 0.)

for val in v:
    s.set_voltage(1, val)
    s.set_autorange(1, 1)
    s.set_autorange(2, 1)
    print s.get_voltage(2)
    f.write('{!s},{!s}\n'.format(s.get_voltage(1), s.get_voltage(2)))
s.set_voltage(1, 0.)
s.set_voltage(2, 0.)

f.close()
