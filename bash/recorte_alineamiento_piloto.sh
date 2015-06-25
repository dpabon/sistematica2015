#!/bin/bash
#Script diseñado con el fin de sistematizar el proceso de alineamiento, recorte de genomas
#para la prueba piloto del proyecto
#Creado el 26-04-20015
#Autor: Daniel Pabón
#email: daniel.epm12@gmail.com
#EJECUTAR SIN sudo
#Alineando marcadores
cd ~/Copy/proyecto/data/processed/prueba_piloto/marcadores
for a in $( ls )
do
  cp $a ~/Copy/proyecto/data/processed/prueba_piloto/alineamientos
done
cd ~/Copy/proyecto/data/processed/prueba_piloto/alineamientos
perl ~/Programas/AMPHORA2-master/Scripts/MarkerAlignTrim.pl -OutputFormat phylip -Trim yes #-WithReference yes
for a in $( find -H *pep )
do
  rm $a
done
rm *.mask
echo "Alineamientos completos"
