#!/bin/bash
#Script diseñado con el fin de sistematizar todo el proceso en la obtención de genomas y marcadores geneticos
#para la prueba piloto del proyecto
#Creado el 26-04-20015
#Autor: Daniel Pabón
#email: daniel.epm12@gmail.com
#Ejecutar con sudo
#Descargar genomas desde el NCBI

cd ~/Copy/proyecto/data/raw/prueba_piloto/genomas
perl ~/Copy/proyecto/bin/perl/descarga_piloto.pl #Abrir el script y comprobar los numeros de acceso de los genomas#
echo "Todas los genomas han sido descargados satisfactoriamente"
#Concatenando Genomas
cat CP002397.1.fna CP002396.1.fna CP002398.1.fna CP002395.1.fna |grep -v Asticcacaulis > Asticcacaulis_excentricus_complete_genome.fna
sed -i '1i >Asticcaculis excentricus genome complete CP002397.1.fna CP002396.1.fna CP002398.1.fna CP002395.1.fna' Asticcacaulis_excentricus_complete_genome.fna
rm -r CP002397.1.fna CP002396.1.fna CP002398.1.fna CP002395.1.fna
mkdir re
cd re
#perl ~/Copy/proyecto/bin/perl/descarga_Monosiga_brevicollis.pl
#cat *.fna | grep -v Monosiga > Monosiga_brevicollis.fna
#sed -i '1i >Monosiga_brevicollis complete genoma + mitocondrion' Monosiga_brevicollis.fna
#mv Monosiga_brevicollis.fna ~/Copy/proyecto/data/raw/prueba_piloto/genomas
cd ~/Copy/proyecto/data/raw/prueba_piloto/genomas
rm -r re
cd ~/Copy/proyecto/data/raw/genomas/
cp Arabidopsis_thaliana_complete_genome.fna ~/Copy/proyecto/data/raw/prueba_piloto/genomas
cd ~/Copy/proyecto/data/raw/prueba_piloto/genomas
chown danne *.fna
echo "Descarga Finalizada"
