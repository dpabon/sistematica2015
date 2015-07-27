#####################################################################################
##                  Trace of MrBayes                                              ##
#####################################################################################

total.nex.run1 <- read.delim("~/Copy/proyecto/data/processed/mrbayes/total.nex.run1.p", header=T)
total.nex.run2<- read.delim("~/Copy/proyecto/data/processed/mrbayes/total.nex.run2.p", header = T)

par(mfrow=c(2,1))
plot(total.nex.run1$Gen, total.nex.run1$TL.all., type="l", xlab="Generation", ylab = "Tree Lenght", main = "Exploratory Analysis
     Chain 1" )
plot(total.nex.run2$Gen, total.nex.run2$TL.all., type="l", xlab="Generation", ylab = "Tree Lenght", main = "Exploratory Analysis
     Chain 2")
