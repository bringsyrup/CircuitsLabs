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
v = linspace(-1, 1, 201)
f = open('nMOS_I2_sat.csv', 'w')
f.write('V_1, I_2\n')
s.set_voltage(1, 5.)
#s.set_current(1, 0.)

for val in v:
    s.set_voltage(2, val)
    s.autorange(1)
    s.autorange(2)
    print s.get_current(1)
    f.write('{!s},{!s}\n'.format(s.get_voltage(2), s.get_current(1)))
s.set_voltage(1, 0.)
s.set_voltage(2, 0.)

f.close()
