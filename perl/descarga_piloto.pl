#!/usr/bin/perl -w
# programa 1.6
#http://161.111.227.80/compbio/material/bioperl/node14.html por: Bruno Contreras-Moreira
#Modificado por: Daniel Pabón, email: daniel.epm12@gmail.com
use strict;
use Bio::Perl;

my @genomas= ( #Copie los identificadores de los genomas
'CP000699.1', #Sphingomonas wittichii RW1, complete genome
'CP002511.1', #Candidatus Pelagibacter sp. IMCC9063, complete genome
'CP004403.1', #Endosymbiont of Acanthamoeba sp. UWC8, complete genome
'CP000107.1', #Ehrlichia canis str. Jake, complete genome
'CP002397.1', #Asticcacaulis excentricus CB 48 plasmid pASTEX01, complete sequence
'CP002396.1', #Asticcacaulis excentricus CB 48 chromosome 2, complete sequence
'CP002398.1', #Asticcacaulis excentricus CB 48 plasmid pASTEX02, complete sequence
'CP002395.1', #Asticcacaulis excentricus CB 48 chromosome 1, complete sequence
'CP000774.1', #Parvibaculum lavamentivorans DS-1, complete genome
'CP000449.1', #Maricaulis maris MCS10, complete genome.
'AP007255.1', #Magnetospirillum magneticum AMB-1 DNA, complete genome
#'CH991543.1', #Monosiga brevicollis MX1 MONBRscaffold_2 genomic scaffold, whole genome shotgun sequence
#'AF538053.1', #Monosiga brevicollis Mitocondrion
'AE016825.1', #Chromobacterium violaceum ATCC 12472, complete genome
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

}
