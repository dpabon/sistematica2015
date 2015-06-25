#!/bin/bash
#Script diseñado con el fin de sistematizar todo el proceso en la obtención de genomas y marcadores geneticos
#para el proyecto general
#Creado el 26-04-20015
#Autor: Daniel Pabón
#email: daniel.epm12@gmail.com
#Ejecutar con sudo
#Descargar genomas desde el NCBI
cd ~/Copy/proyecto/data/raw/genomas
#Concatenando Genomas
: <<Comentario
perl ~/Copy/proyecto/bin/perl/descarga_Asticcacaulis_excentricus.pl
cat CP002397.1.fna CP002396.1.fna CP002398.1.fna CP002395.1.fna |grep -v Asticcacaulis > Asticcacaulis_excentricus_complete_genome.fna
sed -i '1i >Asticcaculis excentricus genome complete CP002397.1.fna CP002396.1.fna CP002398.1.fna CP002395.1.fna' Asticcacaulis_excentricus_complete_genome.fna
rm CP002397.1.fna CP002396.1.fna CP002398.1.fna CP002395.1.fna
sleep 1m
chown danne *.fna

perl ~/Copy/proyecto/bin/perl/descarga_Methylobacterium_chloromethanicum.pl
cat CP001299.1.fna CP001300.1.fna CP001298.1.fna |grep -v Methylobacterium > Methylobacterium_extorquens_CM4.fna
sed -i '1i >Methylobacterium_extorquens_CM4' Methylobacterium_extorquens_CM4.fna
rm -r CP001299.1.fna CP001300.1.fna CP001298.1.fna
sleep 1m
chown danne *.fna

perl ~/Copy/proyecto/bin/perl/descarga_Phenylobacterium_zucineum.pl
cat CP000747.1.fna CP000748.1.fna |grep -v Phenylobacterium > Phenylobacterium_zucineum_HLK1_complete_genome.fna
sed -i '1i >Phenylobacterium_zucineum_HLK1_complete_genome CP000747.1 CP000748.1' Phenylobacterium_zucineum_HLK1_complete_genome.fna
rm -r CP000747.1.fna CP000748.1.fna
sleep 1m
chown danne *.fna

perl ~/Copy/proyecto/bin/perl/descarga_Cryptococcus_neoformans.pl
cat AE017341.1.fna AE017342.1.fna AE017343.1.fna AE017344.1.fna AE017345.1.fna AE017346.1.fna AE017347.1.fna AE017348.1.fna AE017349.1.fna AE017350.1.fna AE017351.1.fna AE017352.1.fna AE017353.1.fna AE017356.1.fna |grep -v Cryptococcus > Cryptococcus_neoformans_complete_genome.fna
sed -i '1i >Cryptococcus_neoformans_complete_genome AE017341.1.fna AE017342.1.fna AE017343.1.fna AE017344.1.fna AE017345.1.fna AE017346.1.fna AE017347.1.fna AE017348.1.fna AE017349.1.fna AE017350.1.fna AE017351.1.fna AE017352.1.fna AE017353.1.fna AE017356.1.fna' Cryptococcus_neoformans_complete_genome.fna
rm -r AE017341.1.fna AE017342.1.fna AE017343.1.fna AE017344.1.fna AE017345.1.fna AE017346.1.fna AE017347.1.fna AE017348.1.fna AE017349.1.fna AE017350.1.fna AE017351.1.fna AE017352.1.fna AE017353.1.fna AE017356.1.fna
sleep 1m
chown danne *.fna
Comentario
perl ~/Copy/proyecto/bin/perl/descarga_Arabidopsis_thaliana.pl
cat CP002684.1.fna CP002685.1.fna CP002686.1.fna CP002687.1.fna CP002688.1.fna Y08501.2.fna|grep -v Arabidopsis > Arabidopsis_thaliana_complete_genome.fna
sed -i '1i >Arabidopsis_thaliana_complete_genome CP002684.1.fna CP002685.1.fna CP002686.1.fna CP002687.1.fna CP002688.1.fna' Arabidopsis_thaliana_complete_genome.fna
rm -r CP002684.1.fna CP002685.1.fna CP002686.1.fna CP002687.1.fna CP002688.1.fna Y08501.2.fna
sleep 1m
chown danne *.fna
: <<Comentario
perl ~/Copy/proyecto/bin/perl/descarga_Spizellomyces_punctatus.pl
cat AF404303.1.fna AF404304.1.fna AF404305.1.fna | grep -v Spizellomyces > Spizellomyces_punctatus_complete_genome.fna
sed -i '1i >Spizellomyces_punctatus_complete_genome AF404303.1.fna AF404304.1.fna AF404305.1.fna' Spizellomyces_punctatus_complete_genome.fna
rm  -r AF404303.1.fna AF404304.1.fna AF404305.1.fna
sleep 1m
chown danne *.fna

perl ~/Copy/proyecto/bin/perl/descarga_Paracoccus_denitrificans.pl
cat CP000489.1.fna CP000490.1.fna CP000491.1.fna | grep -v Paracoccus > Paracoccus_denitrificans_complete_genome.fna
sed -i '1i >Paracoccus_denitrificans_complete_genome CP000489.1.fna CP000490.1.fna CP000491.1.fna' Paracoccus_denitrificans_complete_genome.fna
rm -r CP000489.1.fna CP000490.1.fna CP000491.1.fna
sleep 1m
chown danne *.fna

perl ~/Copy/proyecto/bin/perl/descarga_Candidatus_Paracaedibacter_acanthamoebae.pl
cat CP008941.1.fna CP008942.1.fna |grep -v Candidatus > Candidatus_paracaedibacter_acanthamoebae.fna
sed -i '1i >Candidatus_paracaedibacter_acanthamoebae_complete_genome' Candidatus_paracaedibacter_acanthamoebae.fna
rm -r CP008941.1.fna CP008942.1.fna
sleep 1m
chown danne *.fna

perl ~/Copy/proyecto/bin/perl/descarga_Candidatus_Caedibacter_acanthamoebae.pl
cat CP008936.1.fna CP008940.1.fna |grep -v Candidatus > Candidatus_caedibacter_acanthamoebae.fna
sed -i '1i >Candidatus_caedibacter_acanthamoebae' Candidatus_caedibacter_acanthamoebae.fna
rm -r CP008936.1.fna CP008940.1.fna
sleep 1m
chown danne *.fna

cd ~/Copy/proyecto/data/raw/genomas
mkdir Candidatus_Paracaedibacter_symbiosus
cd ~/Copy/proyecto/data/raw/genomas/Candidatus_Paracaedibacter_symbiosus
perl ~/Copy/proyecto/bin/perl/descarga_Candidatus_paracaedibacter_symbiosus.pl
cat *.fna |grep -v Candidatus > Candidatus_paracaedibacter_symbiosus_complete_genome.fna
sed -i '1i >Candidatus_paracaedibacter_symbiosus_complete_genome' Candidatus_paracaedibacter_symbiosus_complete_genome.fna
cp Candidatus_paracaedibacter_symbiosus_complete_genome.fna ~/Copy/proyecto/data/raw/genomas
cd ~/Copy/proyecto/data/raw/genomas
rm -r Candidatus_Paracaedibacter_symbiosus
sleep 1m
chown danne *.fna

cd ~/Copy/proyecto/data/raw/genomas
mkdir Candidatus_Odysella_thessalonicensis
cd ~/Copy/proyecto/data/raw/genomas/Candidatus_Odysella_thessalonicensis
perl ~/Copy/proyecto/bin/perl/descarga_Candidatus_Odysella_thessalonicensis.pl
cat *.fna |grep -v Candidatus > Candidatus_Odysella_thessalonicensis_L13.fna
sed -i '1i >Candidatus_Odysella_thessalonicensis_L13_complete_genome' Candidatus_Odysella_thessalonicensis_L13.fna
mv Candidatus_Odysella_thessalonicensis_L13.fna ~/Copy/proyecto/data/raw/genomas
cd ~/Copy/proyecto/data/raw/genomas
rm -r Candidatus_Odysella_thessalonicensis
sleep 1m
chown danne *.fna

mkdir NPH_bacterium
cd ~/Copy/proyecto/data/raw/genomas/NPH_bacterium
perl ~/Copy/proyecto/bin/perl/descarga_NPH_bacterium.pl
cat *.fna |grep -v shotgun > NPH_bacterium.fna
sed -i '1i >NPH_bacterium_complete_genome' NPH_bacterium.fna
mv NPH_bacterium.fna ~/Copy/proyecto/data/raw/genomas
cd ~/Copy/proyecto/data/raw/genomas
rm -r NPH_bacterium
sleep 1m
chown danne *.fna

mkdir g
cd ~/Copy/proyecto/data/raw/genomas/g
perl ~/Copy/proyecto/bin/perl/descarga_Candidatus_Pelagibacter_ubique_HTCC1002.pl
cat *.fna |grep -v Candidatus > Candidatus_Pelagibacter_ubique_HTCC1002.fna
sed -i '1i >Candidatus_Pelagibacter_ubique_HTCC1002_complete_genome' Candidatus_Pelagibacter_ubique_HTCC1002.fna
mv Candidatus_Pelagibacter_ubique_HTCC1002.fna ~/Copy/proyecto/data/raw/genomas/
cd ..
rm -r g
sleep 1m
chown danne *.fna

cd ~/Copy/proyecto/data/raw/genomas
mkdir g
cd ~/Copy/proyecto/data/raw/genomas/g
perl ~/Copy/proyecto/bin/perl/descarga_Phytophthora_infestans.pl
cat *.fna |grep -v Phytophthora > Phytophthora_infestans.fna
sed -i '1i >Phytophthora_infestans_complete_genome' Phytophthora_infestans.fna
mv Phytophthora_infestans.fna ~/Copy/proyecto/data/raw/genomas/
cd ..
rm -r g
sleep 1m
chown danne *.fna
Comentario
perl ~/Copy/proyecto/bin/perl/descarga.pl #Abrir el script y comprobar los numeros de acceso de los genomas
echo "Todas los genomas han sido descargados satisfactoriamente"

chown danne *.fna
echo "Genomas concatenados"
