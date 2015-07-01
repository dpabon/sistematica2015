library(ape)
x<-c("AP007255.1","CP000699.1", "GCA_000175215.2", "CP000449.1", "CP000774.1", "CP002511.1", "AF538053.1", "CP004403.1", "AE016825.1", "CP000107.1")

bucle<-for (i in x){
  z=read.GenBank(i)
  u=attr(z,"species")
  r=attr(z,"class")
  t=paste(u,r, ".fasta", sep="")
  write.dna(z,t, format="fasta")

}
