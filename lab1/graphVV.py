#! /bin/env python

import matplotlib.pyplot as plt
import csv
import sys

def makeGraph(CSV):
    f = open(CSV, 'rt')
    try:
        reader = csv.reader(f)
        Vin = []
        Vout = []
        for row in reader:
            Vin.append(row[0])
            Vout.append(row[1])
    finally:
            f.close()
            return Vin[1:], Vout[1:]

if __name__=="__main__":

    Vin, Vout = makeGraph(sys.argv[1])
    plt.plot(Vout, Vin, 'ro', linewidth=2)
    plt.xlabel("Vout", fontsize=14)
    plt.ylabel("Vin", fontsize=14)
    plt.title("Transfer Function of Voltage Divider", fontsize=20)
    plt.show()
