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
v = linspace(0., .00825, 351)
f = open('nMOS32.csv', 'w')
f.write('I_in, I_out1\n')
s.set_voltage(2, 0)

for val in v:
    s.set_current(1, val)
    s.autorange(1)
    s.autorange(2)
    print s.get_current(2)
    f.write('{!s},{!s}\n'.format(s.get_current(1), s.get_current(2)))
s.set_voltage(1, 0.)
s.set_voltage(2, 0.)

f.close()
