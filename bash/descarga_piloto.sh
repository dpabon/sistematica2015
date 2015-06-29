#!/bin/bash
#Created: 26-04-20015
#Autor: Daniel Pabón
#email: daniel.epm12@gmail.com
#Execute with sudo
#Download genomes of NCBI using Bioperl

cd ~/Copy/proyecto/data/raw/prueba_piloto/genomas
perl ~/Copy/proyecto/bin/perl/descarga_piloto.pl #Open the script and check the access numbers#
echo "All Downloaded Genomes"
#Concatenando Genomas
cat CP002397.1.fna CP002396.1.fna CP002398.1.fna CP002395.1.fna |grep -v Asticcacaulis > Asticcacaulis_excentricus_complete_genome.fna
sed -i '1i >Asticcaculis excentricus complete genome CP002397.1.fna CP002396.1.fna CP002398.1.fna CP002395.1.fna' Asticcacaulis_excentricus_complete_genome.fna
rm -r CP002397.1.fna CP002396.1.fna CP002398.1.fna CP002395.1.fna
mkdir re
cd re
perl ~/Copy/proyecto/bin/perl/descarga_Monosiga_brevicollis.pl
cat *.fna | grep -v Monosiga > Monosiga_brevicollis.fna
sed -i '1i >Monosiga_brevicollis complete genoma + mitocondrion' Monosiga_brevicollis.fna
mv Monosiga_brevicollis.fna ~/Copy/proyecto/data/raw/prueba_piloto/genomas
cd ~/Copy/proyecto/data/raw/prueba_piloto/genomas
rm -r re
cd ~/Copy/proyecto/data/raw/genomas/
cp Arabidopsis_thaliana_complete_genome.fna ~/Copy/proyecto/data/raw/prueba_piloto/genomas
cd ~/Copy/proyecto/data/raw/prueba_piloto/genomas
chown danne *.fna
echo "Descarga Finalizada"
