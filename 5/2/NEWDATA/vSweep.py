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
v = linspace(0., 3, 100) + linspace(3.02, 3.5, 40) + linspace(3.5008, 3.7, 75)
f = open('nMOS_exp2.csv', 'w')
f.write('V_S, I_channel\n')
#s.set_voltage(2, -3.)

for val in v:
    s.set_voltage(1, val)
    s.autorange(1)
    print -1*s.get_current(1), s.get_voltage(1)#*-1.
    f.write('{!s},{!s}\n'.format(s.get_voltage(1), -1*s.get_current(1)))
s.set_voltage(1, 0.)
s.set_voltage(2, 0.)

f.close()
