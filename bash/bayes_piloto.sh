#!/bin/bash
#Analisis bayesiano
#para la prueba piloto del proyecto
#Creado el 26-04-20015
#Autor: Daniel Pabón
#email: daniel.epm12@gmail.com
cd ~/Copy/proyecto/data/raw/prueba_piloto/bayes
time pb -d ~/Copy/proyecto/data/processed/prueba_piloto/alineamientos_modificados/Compendio.aln -nchain 2 100 0.3 50 -cat -gtr cadena
