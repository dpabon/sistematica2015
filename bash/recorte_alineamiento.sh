#!/bin/bash
#Script diseñado con el fin de sistematizar el proceso de alineamiento, recorte de marcadores
#Creado el 26-04-20015
#Autor: Daniel Pabón
#email: daniel.epm12@gmail.com
#Alignment Markers
cd ~/Copy/proyecto/data/processed/marcadores_modificados
for a in $( ls )
do
  cp $a ~/Copy/proyecto/data/processed/alineamientos_modificados
done
cd ~/Copy/proyecto/data/processed/alineamientos_modificados
perl ~/Programas/AMPHORA2-master/Scripts/MarkerAlignTrim.pl -OutputFormat phylip -Trim yes #-WithReference yes
for a in $( find -H *pep )
do
  rm $a
done
rm *.mask
echo "Complete Alignments"
