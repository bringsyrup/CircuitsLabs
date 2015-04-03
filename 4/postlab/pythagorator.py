#! /bin/env python
import matplotlib.pyplot as plt
from numpy import transpose, asarray
import re

def getData(fi):
    with open(fi) as f:
        content = f.readlines()
        as_lists = []
        loop_count = 0
        newRun_index = 0
        run_count = -1
        for line in content:
            if loop_count == 0:
                names = re.split('[\n\r\t\s]*', line)[:-1]
            elif "Step" in line:
                newRun_index = 0
                run_count += 1
                as_lists.append([])
            else:
                split_line = re.split('[\n\r\t\s]*', line)
                as_lists[run_count].append([float(split_line[i]) for i in xrange(len(split_line)) if split_line[i]])
            loop_count += 1
            newRun_index += 1
    data = []
    for run in as_lists:
        data.append(transpose(asarray(run)))
    return data, names

def getTheory(Vx, Vy_list, function):
    theory = []
    for Vy in Vy_list:
        exec function
        theory.append(out)
    return theory

if __name__=="__main__":
    data, names = getData('pythagorator.txt')
    theory = getTheory(asarray(data[0][0]), asarray([5,4,3,2,1,0]), 'out = (Vx**2 + Vy**2)**(0.5)')
    colors = ['r', 'b', 'm', 'c', 'g', 'k']
    for i in xrange(len(data)):
        plt.plot(data[i][0], data[i][2], colors[i]+'o', linewidth = 1)
    for i in xrange(len(data)):
        plt.plot(data[i][0], theory[i][::-1], colors[i]+'-', linewidth = 1)
    fontsize = 22 
    plt.title("Pythagorator Translinear Circuit as a function of input Vx", fontsize = fontsize)
    plt.xlabel("$V_x$ (A)", fontsize = fontsize)
    plt.ylabel("$V_z$ (A)", fontsize = fontsize)
    plt.legend(["$V_y$ = 5A", "$V_y$ = 4A", "$V_y$ = 3A", "$V_y$ = 2A", "$V_y$ = 1A", "$V_y$ = 0A", "Expected: $V_y$ = 5A", "Expected: $V_y$ = 4A", "Expected: $V_y$ = 3A", "Expected: $V_y$ = 2A", "Expected: $V_y$ = 1A", "Expected: $V_y$ = 0A", ], loc=0, framealpha = 0.0)
    plt.text(3, 6, r'$V_z = \sqrt{V_x^2 + V_y^2}$', fontsize = fontsize)
    plt.show()
