#! /bin/env python
import smu
import select, sys

s = smu.smu()
s.set_current(1, 0.)
s.set_current(2, 0.)
s.autorange(1)
s.autorange(2)

while True:
    print s.get_voltage(1), s.get_voltage(2)
    if sys.stdin in select.select([sys.stdin], [], [], 0)[0]:
        line = raw_input()
        break

s.set_voltage(1, 0.)
s.set_voltage(2, 0.)

