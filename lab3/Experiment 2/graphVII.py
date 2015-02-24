#! /bin/env python

import matplotlib.pyplot as plt
import csv
import sys

def makeGraph(CSV):
    f = open(CSV, 'rt')
    try:
        reader = csv.reader(f)
        Vb = []
        Ib = []
        Ie = []
        for row in reader:
            Vb.append(row[0])
            Ib.append(row[1])
            Ie.append(row[2])
    finally:
            f.close()
            return Vb[1:], Ib[1:], Ie[1:]

if __name__=="__main__":

    linewidth=2
    colors = ['co', 'mo', 'ko', 'o', 'go', 'ro']
    for i in range(len(sys.argv)):
        if i != 0:
            Vb, Ib, Ie = makeGraph(sys.argv[i])
            plt.semilogy(Vb, Ib, colors[i-1], linewidth=linewidth)
            plt.semilogy(Vb, Ie, colors[i], linewidth=linewidth)
    plt.xlabel("Input Voltage", fontsize=14)
    plt.ylabel("Diode Voltage", fontsize=14)
    plt.title("blah blah", fontsize=20)
    plt.show()
