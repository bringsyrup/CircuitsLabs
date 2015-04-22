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
#v = linspace(0, 1.94, 50) + linspace(1.95, 2.05, 100) + linspace(2.06, 5, 80)
v = linspace(-2, 2, 400)
f = open('exp23_3V_4V.csv', 'w')
f.write('Vdm, Iout\n')
s.set_voltage(2, 4.)

for val in v:
    s.set_voltage(1, val)
    #s.set_autorange(1, 1)
    #s.set_autorange(2, 1)
    s.autorange(1)
    s.autorange(2)
    print s.get_current(2)
    f.write('{!s},{!s}\n'.format(s.get_voltage(1), s.get_current(2)))
s.set_voltage(1, 0.)
s.set_voltage(2, 0.)

f.close()
