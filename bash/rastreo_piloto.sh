#!/bin/bash
#Script diseñado con el fin de sistematizar todo el proceso en la obtención de marcadores geneticos
#para la prueba piloto del proyecto
#Creado el 26-04-20015
#Autor: Daniel Pabón
#email: daniel.epm12@gmail.com
#EJECUTAR SIN sudo
# Buscando marcadores, dados los genomas descargado
echo "Busqueda de marcadores iniciada:"
cd ~/Copy/proyecto/data/raw/prueba_piloto/genomas
for a in $( ls )
do
  cp $a ~/Copy/proyecto/data/processed/prueba_piloto/marcadores
done
echo "genomas copiados"
cd ~/Copy/proyecto/data/processed/prueba_piloto/marcadores
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
echo "Busqueda de marcadores completa"
