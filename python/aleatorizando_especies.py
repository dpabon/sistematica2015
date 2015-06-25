# -*- coding: utf-8 -*-
"""
Created on Sat May  2 01:38:56 2015

@author: Daniel Pabón
@email: daniel.epm12@gmail.com
"""

import os
import glob
import readline
import numpy as np
import random
#from Bio import

clados= "Caulobacterales",  "Eucaria" , "outgroup",  "Rhizobiales",  "Rhodobacterales",  "Rhodospirillales",  "Rickettsiales", "Rickettsiales_wang" , "SAR_11",  "Sphingomonadales",
seleccion= np.array([])
for i in clados:
    directorio="/home/tttt/MEGAsync/sistematica/proyecto/data/raw/prueba_piloto/clados_aleatorizar/"+i #Modifique esta linea para accesar al directorio desde su computador#
    os.chdir(directorio)
    t=open("especies.txt","r")
    y=file.readlines(t)
    print "especie elegida para el clado " +i, ":", random.choice(y)
