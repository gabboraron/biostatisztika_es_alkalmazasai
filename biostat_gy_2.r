szam <- 3.3
typeof(szam)
str(szam)

egesz <- 3
typeof(egesz)
egesz <- 3L
typeof(egesz)
str(egesz)

beagyazott <- "És Ferenci mondta: 'talpra haza'"

logikai <- TRUE
str(logikai)

logikai <- F
str(logikai)


miafranc <- as.logical(-3.14)
  
szamvektor <- c(2,3.5,6,-4)
szamvektor
str(szamvektor)

rnorm(100)

szam <- 5
c(szam,4)

seq(1, 13, 2)
seq(1, 13, 1)

1:13

szamvektor <- c(elso = 3, masodik =8.3, harmadik = -4,
                negyedik = 7, ötödik = 9, hatodik = 42)
szamvektor["elso"]
names(szamvektor)

##indexelés
szamvektor[3]
szamvektor[c(1,4)]
szamvektor[c(T,T,F,F,T)]
szamvektor[c(T,F)]
szamvektor[-3]

szamvektor[2] <- 10.5
szamvektor
szamvektor[10] <- 20
szamvektor

szamok <- c(1,2,3,4,5)
str(szamok)

valami <- c(NA, NA, NA)
str(valami)

### matrixok
szammatrix <- matrix(1:8, nc = 2)
szammatrix
szammatrix <- matrix(1:8, nr = 2)
szammatrix
szammatrix <- matrix(1:8, nc = 2, byrow = TRUE)
szammatrix

dim(szammatrix)
nrow(szammatrix)
ncol(szammatrix)

szammatrix[1,1]

colnames(szammatrix) <- c("egy", "ketto")
rownames(szammatrix) <- c("a", "b", "c", "d")
szammatrix

####
adatkeret <- data.frame(elso = c(1,3.4,-3),
                        masodik = c("a", "b", "c"),
                        harmadik = c(T,T,F))
adatkeret
str(adatkeret)

adatkeret[c(T,F,T), -1]

adatkeret$elso
adatkeret[,"elso"]

adatkeret$elso>0.5
adatkeret[adatkeret$elso>0.5,]

data(birthwt, package = "MASS")
str(birthwt)
birthwt[str]
colnames(birthwt)

birthwt$bwt    # vektornak adja ki

birthwt[[10]]  #
birthwt["bwt"] # megőrzi a dataframeségét

