#! /bin/env python

import matplotlib.pyplot as plt
import csv
import sys

def makeGraph(CSV):
    f = open(CSV, 'rt')
    try:
        reader = csv.reader(f)
        Vb = []
        Vc = []
        for row in reader:
            Vb.append(row[0])
            Vc.append(row[1])
    finally:
            f.close()
            return Vb[1:], Vc[1:]

if __name__=="__main__":

    Vb, Vc = makeGraph(sys.argv[1])
    plt.plot(Vb, Vc, 'ro', linewidth=2)
    plt.xlabel("Voltage", fontsize=14)
    plt.ylabel("Current", fontsize=14)
    plt.title("VV curve data for 280 Ohm resistor", fontsize=20)
    plt.show()
