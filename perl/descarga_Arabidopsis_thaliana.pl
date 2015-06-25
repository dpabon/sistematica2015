#!/usr/bin/perl -w
# programa 1.6
#http://161.111.227.80/compbio/material/bioperl/node14.html por: Bruno Contreras-Moreira
#Modificado por: Daniel Pabón, email: daniel.epm12@gmail.com
use strict;
use Bio::Perl;

my @genomas= ( #Copie los identificadores de los genomas
'CP002684.1', #Arabidopsis thaliana chromosome 1, complete sequence ***
'CP002685.1', #Arabidopsis thaliana crhomosome 2, complete sequence
'CP002686.1', #Arabidopsis thaliana chromosome 3, complete sequence
'CP002687.1', #Arabidopsis thaliana chromosome 4, complete sequence
'CP002688.1', #Arabidopsis thaliana chromosome 5, complete sequence
'Y08501.2',   #Arabidopsis thaliana, mitochondrial genome
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
  sleep 10;

}
