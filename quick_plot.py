#!/usr/bin/env python3
import matplotlib.pyplot as plt
import numpy as np

from argparse import ArgumentParser

def plot_all(args):
  plt.rcParams["figure.figsize"] = (12,8)
  fig = plt.figure()
  ax = fig.add_subplot(111)
  ax.set_yscale('log')
  ax.set_xscale('log')

  for file in args.files_list:
    print(file)

    arr = np.loadtxt(file)

    for col in args.columns:
      print(col)
      X = arr[:,0]
      y = arr[:,int(col)-1]
      ax.scatter(X, y, label=f'{file}-{col}')

  ax.legend(loc='best')
  plt.tight_layout()
  plt.show()



if __name__ == "__main__":
  parser = ArgumentParser()
  parser.add_argument('-c', '--columns', nargs='+', default=[2])
  parser.add_argument('files_list', nargs='+', default=[])
  args = parser.parse_args()

  plot_all(args)
