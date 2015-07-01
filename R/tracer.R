cadena.1 <- read.delim("~/Copy/proyecto/data/raw/prueba_piloto/bayes/corrida_1/cadena.1.trace")
Sys.sleep(10*60)
cadena.1p <- read.delim("~/Copy/proyecto/data/raw/prueba_piloto/bayes/corrida_1/cadena.1.trace")
cadena.2<- read.delim("~/Copy/proyecto/data/raw/prueba_piloto/bayes/corrida_1/cadena.2.trace")
x11()
par(mfrow=c(2,1))
if (cadena.1==cadena.1p){
  print("No hay cambios en los tracer")
  plot (cadena.1p$X.cycle, cadena.1p$allocent, type="l", xlab="Cycle", ylab="Allocent", main="Cadena 1" )
  plot (cadena.2$X.cycle, cadena.2$allocent, type="l", xlab="Cycle", ylab="Allocent", main="Cadena 2" )
  Sys.sleep(30)
} else {
  while(cadena.1 != cadena.1p){
    cadena.1 <- read.delim("~/Copy/proyecto/data/raw/prueba_piloto/bayes/corrida_1/cadena.1.trace")
    Sys.sleep(10*60)
    cadena.1p <- read.delim("~/Copy/proyecto/data/raw/prueba_piloto/bayes/corrida_1/cadena.1.trace")
    cadena.2<- read.delim("~/Copy/proyecto/data/raw/prueba_piloto/bayes/corrida_1/cadena.2.trace")
    plot (cadena.1p$X.cycle, cadena.1p$allocent, type="l", xlab="Cycle", ylab="Allocent", main="Cadena 1" )
    plot (cadena.2$X.cycle, cadena.2$allocent, type="l", xlab="Cycle", ylab="Allocent", main="Cadena 2" )
  }
    
}

#?Sys.sleep

#head(cadena.1)
#plot(cadena.1)
#x11()
#par(mfrow=c(2,1))
#plot(cadena.1$X.cycle, cadena.1$alpha, type="l") 
#plot(cadena.1$X.cycle, cadena.1$loglik, type="l")
#plot( cadena.1$X.cycle, cadena.1$length, type="l" )
#plot (cadena.1$X.cycle, cadena.1$allocent, type="l" )

#?readlines
##Bucle tracer
