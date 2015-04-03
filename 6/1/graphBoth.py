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
        counter = 0
        for row in reader:
            if counter == 0:
                graphType = str(row[0] + row[1])
                print graphType
                counter += 1
            if graphType == "VI":
                V.append(row[0])
                I.append(row[1])
            elif graphType == "IV":
                V.append(row[1])
                I.append(row[0])
            else:
                V.append(row[0])
                I.append(row[1])
    finally:
            f.close()
            return V[1:], I[1:]

if __name__=="__main__":

    linewidth=2
    colors = ['o', 'ro', 'ko', 'co', 'mo']
    for i in range(len(sys.argv)):
        V, I = makeGraph(sys.argv[i-1])
        plt.plot(V, I, colors[i], linewidth=linewidth)
    plt.xlabel("Voltage", fontsize=14)
    plt.ylabel("Current", fontsize=14)
    plt.title("IV curve data for 280 Ohm resistor", fontsize=20)
    plt.show()
