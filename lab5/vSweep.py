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
v = linspace(0., 5., 301)
f = open('nMOS_exp1.csv', 'w')
f.write('V_G, I_channel')

s.set_voltage(2, 5.)
for val in v:
    s.set_voltage(1, val)
    s.autorange(1)
    s.autorange(2)
    print s.get_current(2)
    f.write('{!s},{!s}\n'.format(s.get_voltage(1), s.get_current(2)))
s.set_voltage(1, 0.)
s.set_voltage(2, 0.)

f.close()
