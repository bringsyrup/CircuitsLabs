#! /bin/env python

import matplotlib.pyplot as plt
import csv
import sys

def makeGraph(CSV):
    f = open(CSV, 'rt')
    try:
        reader = csv.reader(f)
        Vin = []
        Iin = []
        V = []
        for row in reader:
            Vin.append(row[0])
            Iin.append(row[1])
            V.append(row[2])
    finally:
            f.close()
            return Vin[1:], Iin[1:], V[1:]

if __name__=="__main__":

    linewidth=2
    colors = ['co', 'mo', 'ko', 'o', 'go', 'ro']
    for i in range(len(sys.argv)):
        if i != 0:
            Vin, Iin, V = makeGraph(sys.argv[i])
            plt.semilogy(Vin, Iin, colors[i-1], linewidth=linewidth)
    plt.xlabel("Input Voltage", fontsize=14)
    plt.ylabel("Diode Voltage", fontsize=14)
    plt.title("blah blah", fontsize=20)
    plt.show()
