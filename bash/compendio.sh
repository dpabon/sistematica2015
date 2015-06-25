#!/bin/bash

#Script diseñado con el fin de sistematizar todo el proceso en la obtención de genomas, marcadores geneticos, alineamiento, recorte de los mismos y analisis filogenetico
#Creado el 26-04-20015
#Autor: Daniel Pabón
#email: daniel.epm12@gmail.com

#Descargar genomas desde el NCBI

#cd /home/tttt/Copy/proyecto/data/prueba_piloto/GENOMAS

#perl /home/tttt/Copy/proyecto/bin/perl/descarga.pl #Abrir el script y comprobar los numeros de acceso de los genomas#
#echo "Todas los genomas han sido descargados satisfactoriamente"
#echo ""
#echo "Busqueda de marcadores iniciada:"
# Buscando marcadores, dados los genomas descargados

#cd /home/tttt/Copy/proyecto/data/prueba_piloto/GENOMAS
#for a in $( ls )
#do
#  cp $a /home/tttt/Copy/proyecto/data/prueba_piloto/marcadores
#done

cd /home/tttt/Copy/proyecto/data/prueba_piloto/marcadores
#for a in $( ls )
#do
#  perl /home/tttt/Programas/AMPHORA2-master/Scripts/MarkerScanner.pl $a -DNA
#done

#for a in $(find -H *fna )
#do
#  rm $a
#done

#for a in $(find -H *orf )
#do
#  rm $a
#done
#for a in $(find -H *hmmsearch )
#do
#  rm $a
#done
#echo "Busqueda de marcadores completa"
#Alineando marcadores
for a in $( ls )
do
  cp $a /home/tttt/Copy/proyecto/data/prueba_piloto/alineamientos
done
cd /home/tttt/Copy/proyecto/data/prueba_piloto/alineamientos

perl /home/tttt/Programas/AMPHORA2-master/Scripts/MarkerAlignTrim.pl -OutputFormat phylip -Trim yes #-WithReference yes

for a in $( find -H *pep )
do
  rm $a
done
echo "Alineamientos completos"
#for a ind $( find /home/tttt/Copy/proyecto/data/prueba_piloto/marcadores/-name *pep )
#do
#  perl /home/tttt/Programas/AMPHORA2-master/Scripts/MarkerAlignTrim.pl
