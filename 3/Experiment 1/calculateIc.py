#! /bin/env python

import csv
import sys

f = open(sys.argv[1], 'rwt')
reader = csv.reader(f)

Vb = []
Ib = []
Ie = []
Ic = []
counter = 0
for row in reader:
    if counter != 0:
        Vb.append(row[0])
        Ib.append(row[1])
        Ie.append(row[2])
        Ic.append(str(float(row[2])-float(row[1])))
    else:
        counter += 1
f.close()
f = open('bjtWithIc.csv', 'w')
f.write('"Vb", "Ib", "Ic"\n')
for i in range(len(Vb)):
    f.write('{!s},{!s},{!s}\n'.format(Vb[i], Ib[i], Ic[i]))
f.close()



