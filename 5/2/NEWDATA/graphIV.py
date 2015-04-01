#! /bin/env python

import matplotlib.pyplot as plt
import csv
import sys

def makeGraph(CSV):
    f = open(CSV, 'rt')
    try:
        reader = csv.reader(f)
        I = []
        V = []
        for row in reader:
            V.append(row[0])
            I.append(row[1])
    finally:
            f.close()
            return V[1:], I[1:]

if __name__=="__main__":

    V, I = makeGraph(sys.argv[1])
    #plt.plot(V, I, 'ro', linewidth=2)
    plt.semilogy(V, I, 'ro', linewidth=2)
    plt.xlabel("Voltage", fontsize=14)
    plt.ylabel("Current", fontsize=14)
    plt.title("IV curve data for 280 Ohm resistor", fontsize=20)
    plt.show()
