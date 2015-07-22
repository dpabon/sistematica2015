#!/bin/bash
#Created: 26-04-20015
#Autor: Daniel Pabón
#email: daniel.epm12@gmail.com
# Search Genetic Markers
echo "Busqueda de marcadores iniciada:"
cd ~/Copy/proyecto/data/raw/genomas
for a in $( ls )
do
  cp $a ~/Copy/proyecto/data/processed/marcadores
done
echo "genomas copiados"
cd ~/Copy/proyecto/data/processed/marcadores
for a in $( ls )
do
  perl ~/Programas/AMPHORA2-master/Scripts/MarkerScanner.pl $a -DNA
done
for a in $(find -H *fna )
do
  rm $a
done
for a in $(find -H *orf )
do
  rm $a
done
for a in $(find -H *hmmsearch )
do
  rm $a
done
echo "Search Complete"
