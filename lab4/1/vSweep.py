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
v = linspace(0., 5., 101)
f = open('bjt3.csv', 'w')

for i in xrange(4):
    raw_input("Press enter when ready to measure " + str(i + 1))
    f.write('Run ' + str(i+1) + '\n')
    f.write('Vb, Ib, Ie, Ic\n')
    for val in v:
        s.set_voltage(1, val)
        s.autorange(1)
        s.autorange(2)
        realVal = s.get_voltage(1)
        Ib = s.get_current(1)
        Ie = s.get_current(2)
        Ic = Ie - Ib
        print Ib, Ie
        f.write('{!s},{!s},{!s},{!s}\n'.format(realVal, Ib, Ie, Ic))
    s.set_voltage(1, 0.)
    s.set_voltage(2, 0.)

f.close()
