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
v = linspace(-5., 0., 151)
f = open('pMOS_exp3_-600mV.csv', 'w')
f.write('V_DS, I_channel')
#s.autorange(2)
s.set_voltage(2, -.6)
#s.set_current(2, 0.)

for val in v:
    s.set_voltage(1, val)
    s.autorange(1)
    print s.get_current(1)#*-1.
    f.write('{!s},{!s}\n'.format(s.get_voltage(1), s.get_current(1)))
s.set_voltage(1, 0.)
s.set_voltage(2, 0.)

f.close()
