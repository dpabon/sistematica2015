#####################################################################################
##                  Extract   parameters ".pstat"                                  ##
#####################################################################################
setwd("~/Copy/proyecto/data/processed/mrbayes/")
total.pstat <- read.delim("~/Copy/proyecto/data/processed/mrbayes/total.nex.pstat", comment.char="#")
## Extract aarevmatpr parameters
means<- total.pstat$Mean
write(means[2:191], file = "aarevmatpr_Partition1", ncolumns =190, sep = "," )
write(means[192:381], file = "aarevmatpr_Partition2", ncolumns =190, sep = "," )
write(means[382:571], file = "aarevmatpr_Partition3", ncolumns =190, sep = "," )
write(means[572:761], file = "aarevmatpr_Partition4", ncolumns =190, sep = "," )
write(means[762:951], file = "aarevmatpr_Partition5", ncolumns =190, sep = "," )
write(means[952:1141], file = "aarevmatpr_Partition6", ncolumns =190, sep = "," )
write(means[1142:1331], file = "aarevmatpr_Partition7", ncolumns =190, sep = "," )
write(means[1332:1521], file = "aarevmatpr_Partition8", ncolumns =190, sep = "," )
write(means[1522:1711], file = "aarevmatpr_Partition9", ncolumns =190, sep = "," )
write(means[1712:1901], file = "aarevmatpr_Partition10", ncolumns =190, sep = "," )

length(means)-10
## Extract pinvar
tail(means, n=10)

## Extract alpha
total.pstat[2102:2111,]
means[2102:2111]
