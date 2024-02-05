# -*- coding: utf-8 -*-
"""TopoOrder.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1_YVyleGAUdXZzc_rx3lElQDyO6yU3GI_
"""

#find the hubgenes from different topological ordering
import pandas as pd
import numpy as np

orders = ['Betweenness','BottleNeck','Closeness','ClusteringCoefficient',
          'DMNC','Degree','EPC','EcCentricity','MCC','MNC','Radiality','Stress']

genelist = set()

for o in orders:
  file = o+".csv"
  data = pd.read_csv(file,header=None,skiprows=2)
  data.columns = ['Rank','Name','Score']
  genelist.update(set(data['Name']))
genelist

import csv
genelist = list(genelist)
#replace - with output file name
with open('-.csv','w',newline='') as cs:
  cswriter = csv.writer(cs)
  cswriter.writerows(zip(genelist))

