#! /bin/env python

import matplotlib.pyplot as plt
import csv
import sys

def makeGraph(CSV):
    f = open(CSV, 'rt')
    try:
        reader = csv.reader(f)
        Iin = []
        Iout = []
        for row in reader:
            Iin.append(row[0])
            Iout.append(row[1])
    finally:
            f.close()
            return Iin[1:], Iout[1:]

if __name__=="__main__":

    Iin, Iout = makeGraph(sys.argv[1])
    plt.plot(Iin, Iout, 'ro', linewidth=2)
    plt.xlabel("Iin", fontsize=14)
    plt.ylabel("Iout", fontsize=14)
    plt.title("Transfer Function for a Current Divider", fontsize=20)
    plt.grid("on")
    plt.show()
