#!/usr/bin/perl -w
# programa 1.6
#http://161.111.227.80/compbio/material/bioperl/node14.html por: Bruno Contreras-Moreira
#Modificado por: Daniel Pabón, email: daniel.epm12@gmail.com
use strict;
use Bio::Perl;

my @genomas= ( #Copie los identificadores de los genomas
#Clado Caulobacterales# Revisado
'AE017341.1', #Cryptococcus neoformans, chromosome 1, complete sequence ****
'AE017342.1', #Cryptococcus neoformans, chromosome 2, complete sequence
'AE017343.1', #Cryptococcus neoformans, chromosome 3, complete sequence
'AE017344.1', #Cryptococcus neoformans, chromosome 4, complete sequence
'AE017345.1', #Cryptococcus neoformans, chromosome 5, complete sequence
'AE017346.1', #Cryptococcus neoformans, chromosome 6, complete sequence
'AE017347.1', #Cryptococcus neoformans, chromosome 7, complete sequence
'AE017348.1', #Cryptococcus neoformans, chromosome 8, complete sequence
'AE017349.1', #Cryptococcus neoformans, chromosome 9, complete sequence
'AE017350.1', #Cryptococcus neoformans, chromosome 10, complete sequence
'AE017351.1', #Cryptococcus neoformans, chromosome 11, complete sequence
'AE017352.1', #Cryptococcus neoformans, chromosome 12, complete sequence
'AE017353.1', #Cryptococcus neoformans, chromosome 13, complete sequence
'AE017356.1', #Cryptococcus neoformans, chromosome 14, complete sequence
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
