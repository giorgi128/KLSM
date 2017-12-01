import matplotlib
matplotlib.use('Agg')
import subprocess
import timeit
import shlex
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import matplotlib as mpl

colors = ['red', 'black', 'blue', 'brown', 'green', 'gold', 'orange', 'yellowgreen']
pointtype = ['o', '^', '*', 'x', '+', 'o', '^', '*']
linetype = ['--', '-.', '-', ':', '--', '--', '-.', '-', ':', '--']

f = open('Input.txt', 'r')

fig, ax = plt.subplots()
ax.set_xlabel("#Threads")
ax.set_ylabel("MOps/sec")

ax.plot(A, B, color='red', linestyle='-', marker='o', label="plotlabel")

f.close()

ax.grid(True, linestyle='-')

ax.legend(loc='lower right', prop={'size': 12})#, bbox_to_anchor=(1, 0.5))

fig.suptitle('Throughput, #SameSet=100, #Unite=5533214,#components=1', fontweight='bold')
fig.savefig('Input3.png')
