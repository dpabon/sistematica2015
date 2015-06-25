#!/bin/bash
#Script diseñado con el fin de sistematizar todo el proceso en la obtención de genomas, marcadores geneticos, alineamiento, recorte de los mismos y analisis filogenetico
#para la prueba piloto del proyecto
#Creado el 26-04-20015
#Autor: Daniel Pabón
#email: daniel.epm12@gmail.com
#Descargar genomas desde el NCBI
#cd /home/tttt/Copy/proyecto/data/raw/prueba_piloto/genomas
#perl /home/tttt/Copy/proyecto/bin/perl/descarga_piloto.pl #Abrir el script y comprobar los numeros de acceso de los genomas#
#echo "Todas los genomas han sido descargados satisfactoriamente"
#Concatenando Genomas
#cat CP002397.1.fna CP002396.1.fna CP002398.1.fna CP002395.1.fna |grep -v Asticcacaulis > Asticcacaulis_excentricus_complete_genome.fna
#sed -i '1i >Asticcaculis excentricus genome complete CP002397.1.fna CP002396.1.fna CP002398.1.fna CP002395.1.fna' Asticcacaulis_excentricus_complete_genome.fna
#rm -r CP002397.1.fna CP002396.1.fna CP002398.1.fna CP002395.1.fna
#echo ""
#echo "Busqueda de marcadores iniciada:"
# Buscando marcadores, dados los genomas descargados
cd /home/tttt/Copy/proyecto/data/raw/prueba_piloto/genomas
for a in $( ls )
do
  cp $a /home/tttt/Copy/proyecto/data/processed/prueba_piloto/marcadores
done
echo "genomas copiados"
cd /home/tttt/Copy/proyecto/data/processed/prueba_piloto/marcadores
for a in $( ls )
do
  perl /home/tttt/Programas/AMPHORA2-master/Scripts/MarkerScanner.pl $a -DNA
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
#Alineando marcadores
#for a in $( ls )
#do
#  cp $a /home/tttt/Copy/proyecto/data/processed/prueba_piloto/alineamientos
#done
#cd /home/tttt/Copy/proyecto/data/processed/prueba_piloto/alineamientos
#perl /home/tttt/Programas/AMPHORA2-master/Scripts/MarkerAlignTrim.pl -OutputFormat phylip -Trim yes #-WithReference yes
#for a in $( find -H *pep )
#do
#  rm $a
#done
#echo "Alineamientos completos"
