#!/usr/bin/perl -w
# programa 1.6
#http://161.111.227.80/compbio/material/bioperl/node14.html por: Bruno Contreras-Moreira
#Modificado por: Daniel Pabón, email: daniel.epm12@gmail.com
use strict;
use Bio::Perl;

my @genomas= ( #Copie los identificadores de los genomas
#Clado Caulobacterales# Revisado
#'CP002102.1', #Brevundimonas subvibrioides ATCC 15264
#Clado Eucaria# Revisado
'DS469507.1', #Nematostella vectensis
'AF538053.1',#, #Monosiga brevicollis
              #Phytophthora infestans ***
#Outgroup# Revisado
#Species tree  #Magnetococcus marinus MC-1
'CP002876.1', #Nitrosomonas sp. Is79A3
'AL646052.1', #Ralstonia solanacearum GMI1000
'CP000089.1', #Dechloromonas aromatica RCB
'AE016825.1', #Chromobacterium violaceum ATCC 12472, complete genome
'AM286280.1', #Francisella tularensis subsp. tularensis FSC198
'CR628337.1', #Legionella pneumophila str. Lens
'CP009685.1', #Escherichia coli str. K-12 substr. MG1655
'CP000744.1', #Pseudomonas aeruginosa PA7
#Clado Rhizobiales# Revisado
'CP002292.1', #Rhodomicrobium vannielii ATCC 17100
'CP002083.1', #Hyphomicrobium denitrificans ATCC 51888
'CP000781.1', #Xanthobacter autotrophicus Py2
'CP002418.1', #Rhodopseudomonas palustris DX-1
'CP001280.1', #Methylocella silvestris BL2
'CP000390.1', #Chelativorans sp. BNC1
'CP001622.1', #Rhizobium leguminosarum bv. trifolii WSM1325
'BX897700.1', #Bartonella quintana str. Tolouse
'CP000264.1', #Jannaschia sp. CCS1
'CP000377.1', #Ruegeria sp. TM1040
'CP002224.1', #Ketogulonicigenium vulgurae Y25
'CP000774.1', #Parvibaculum lavamentivorans DS-1, complete genome
#Clado Rhodobacterales# Revisado
'CP000449.1', #Maricaulis maris MCS10, complete genome.
'CP001678.1', #Hirschia baltica ATCC 49814
'CP000158.1', #Hyphomonas neptunium ATCC 15444
'CP002156.1', #Parvularcula bermudensis HTCC2503
#Clado Rhodospirillales# Revisado
'CP000613.2', #Rhodospirillum centenum SW
'CP002382.1', #Micavibrio aeruginosavorus ARL-13
'CP000230.1', #Rhodospirillum rubrum ATCC 11170
'AP007255.1', #Magnetospirillum magneticum AMB-1 DNA, complete genome
'CP000394.1', #Granulibacter bethesdensis CGDNIH1
'CP000009.1', #Gluconobacter oxydans 621H
'CP001189.1', #Gluconabacter diazotrophicus PA15
'CP000697.1', #Acidiphilium cryptum JF-5
#Clado Rickettsiales# Revisado
'AM494475.1', #Orientia tsutsugamushi str. Boryong
'AE017197.1', #Rickettsia typhi str. Wilmington
'CP000237.1', #Neorickettsia sennetsu str. Miyayama
'AM999887.1', #Wolbachia end. of Culex quin. Pel
'CP000107.1', #Ehrlichia canis str. Jake
'CP000235.1', #Anaplasma phagocytophilum HZ
'CP002130.1', #Candidatus Midichloria mitochondrii IricVA
'CP004403.1', #Endosymbiont of Acanthamoeba sp. UWC8 *
              #Candidatus Paracaedibacter symbious ***
              #Candidatus Odysella thesalonicensis L13  ***
              #NPH Bacterium ***
##Clado SAR_11## Revisado
'ADAC02000001.1', #Alphaproteobacterium HIMB114
'CP001751.1', #Candidatus Puniceispirillum marinum IMCC1322
              #Candidatus Pelagibacter ubique SAR11 HTCC1002 ***
#Clado Sphingomonadales# Revisado
'AE008692.2',#Zymomonas mobilis subsp. mobilis ZM4
'CP000699.1'#Sphingomonas wittichii RW1
);


foreach my $elemento (@genomas){
  my $gi = $elemento; # identificador conocido # prueba NP_417816 con red lenta
  #my $gbfile  = $gi . '.gb';
  my $fnafile = $gi . '.fna';

  my $secuenciaGenBank = get_sequence( 'genbank', $gi );
  #write_sequence(">$gbfile", 'genbank', $secuenciaGenBank);
  write_sequence(">$fnafile", 'fasta', $secuenciaGenBank); # convierte a FASTA la secuencia

  #printf("# descargo $gbfile (%1.1g Mb)\n",(-s $gbfile) / (1024 * 1024));

  printf("# Se Descargo el genoma: $fnafile (%1.1g Mb)\n",(-s $fnafile) / (1024 * 1024));
  sleep 15;

}
