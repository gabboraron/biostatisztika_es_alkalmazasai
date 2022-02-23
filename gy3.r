szam <- 4.5

szamvektor <- rnorm(10)
szammatrix <- matrix(1:6, nc = 2)
data(birthwt, package = "MASS")

lista <- list(szam, szamvektor, szammatrix, birthwt[2:5,])

lista
print(szamvektor)

?rnorm

rnorm(10,70,15) 
rnorm(n=10, mean = 70, sd = 15)

arglista <- list(n=10,
                 mean = mean(birthwt$bwt),
                 sd = 15)
do.call(mean, arglista)
rnorm(arglista)

?mean

# ciklusok helyett
?apply
# lapply(elem, függvény)

rnormsajat  <- function(mean)rnorm(10,mean,1)
rnormsajat2 <- function(n, dohanyzo = 0){
  if(!is.numeric(n))stop("Az n nem szám")
  sulyok <- birthwt[birthwt$smoke == dohanyzo,]$bwt
  atlag <- mean(sulyok)
  return(rnorm(n,atlag, 1))
  # return nélkül is értelmes lenne
  # (rnorm(n,atlag, 1))
}
rnormsajat2(100, dohanyzo = 1)
rnormsajat2("alma")

rnormsajat3 <- function( rassz = 1){
  sulyok <- birthwt[birthwt$race == rassz,]$bwt
  mean(sulyok)
}
rnormsajat3(2)
lapply(1:3, rnormsajat3)
do.call(c,lapply(unique(birthwt$race), rnormsajat3))
# ugyanaz mint a 
sapply(lapply(unique(birthwt$race), rnormsajat3),c)

lapply(1:3, rnorm)
lapply(seq(50,80,10),rnormsajat)
lapply(seq(50,80,10), function(x)rnorm(10,x,1))

lapply(birthwt, mean) # azért fut le mert a dataframe egy nagy lista.
birthwt[1]

?sd

sajat <- function(fpv = 1)
{
  sulyok <- birthwt[birthwt$fpv == fpv, ]$bwt
  c(mean(sulyok), sd(sulyok))
}

sapply(unique(birthwt$ftv), sajat)

summary(birthwt)
birthwt$ht <- birthwt$ht == 1
birthwt$ht
install.packages("psych")
psych::describe(birthwt)
library(psych)
