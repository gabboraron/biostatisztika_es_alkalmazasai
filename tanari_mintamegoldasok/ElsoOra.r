rnorm(10)

###

szam <- 5.3
szam <- "abc"
zsam <- 4

szam <- 4.3
szam
(szam <- 4.3)

rnorm(1000)

eredmeny <- .Last.value
eredmeny

###

szam <- 5.3
typeof(szam)
str(szam)

egesz <- 3
typeof(egesz)
egesz <- 3L
typeof(egesz)
str(egesz)

.Machine

###

szoveg <- "a"
szoveguj <- "alma"
str(szoveg)
str(szoveguj)

typeof(szoveg)

beagyazott <- "És Ferenci mondta: "Talpra haza"."
beagyazott <- "És Ferenci mondta: 'Talpra haza'."
beagyazott

###

logikai <- TRUE
str(logikai)

logikai <- F
str(logikai)

###

# is.<tipus>

is.character(szam)
is.character(szoveg)
is.character(logikai)

is.numeric(szam)
is.numeric(egesz)
is.integer(szam)
is.integer(egesz)
is.double(szam)
is.double(egesz)

# as.<tipus>

as.character(szam)
as.numeric(szoveg)
as.numeric("2.6")
as.numeric(TRUE)
as.numeric(FALSE)
as.logical(0)
as.logical(1)
as.logical(2)
as.logical(100)
as.logical(-10)
as.logical(3.4)

eziszam <- as.numeric("2.6")
eziszam

###

szamvektor <- c(2, 3.5, 6, -4)
szamvektor
str(szamvektor)

szamvektor2 <- rnorm(100)
str(szamvektor2)
szamvektor2

szam
c(szam, 4)

c("kiskutya", 5)

seq(1, 13, 2)
seq(1, 13, 1)
1:13

szovegvektor <- c("szam", "szöveg", "alma")

szamvektor <- c(elso = 3, masodik = 8.3,
                harmadik = -4, 5, 6.7)
szamvektor

names(szamvektor)

names(szamvektor) <- c("egy", "kettő", "három",
                       "négy", "öt")
szamvektor

##

szamvektor[3]
szamvektor[c(1, 4)]
szamvektor[c(T, T, F, F, T)]
szamvektor[c(T, F)]
szamvektor[-3]
szamvektor[-c(1, 3)]
szamvektor["kettő"]
szamvektor[c("kettő", "öt")]
szamvektor[c(4, 1)]
szamvektor[c(4, 1, 1, 1, 2, 2, 1)]

szamvektor[10]

szamvektor[2] <- 10.5
szamvektor

szamvektor[10] <- 20
szamvektor

szamvektor[3] <- NA
szamvektor

###

szammatrix <- matrix(1:6, nc = 2)
szammatrix
szammatrix <- matrix(1:6, nc = 2, byrow = TRUE)
szammatrix

dim(szammatrix)
dim(szammatrix)[1]
nrow(szammatrix)
ncol(szammatrix)

szammatrix[2, 1]
szammatrix[c(2, 3), 1]
szammatrix[c(2, 3), c(1, 2)]
szammatrix[c(T, F, T), 2]
szammatrix[2, ]

colnames(szammatrix) <- c("egy", "kettő")
szammatrix
rownames(szammatrix) <- c("a", "b", "c")
szammatrix

szammatrix["a", "kettő"]
szammatrix["a", c(T, F)]

###

adatkeret <- data.frame(elso = c(1, 3.4, -3),
                        masodik = c("a", "bc", "d"),
                        harmadik = c(T, T, F))
adatkeret
str(adatkeret)

adatkeret[c(T, F, T), -1]
adatkeret[1, ]
adatkeret[, 1]
adatkeret[, "elso"]
adatkeret$elso

adatkeret$elso>0.5
adatkeret[adatkeret$elso>0.5, ]

data(birthwt, package = "MASS")
birthwt
str(birthwt)

head(birthwt)
tail(birthwt)

birthwt$bwt
birthwt[birthwt$bwt<1500,]

birthwt[, 10]
birthwt$bwt
birthwt[, "bwt"]
birthwt[[10]]
birthwt["bwt"]

str(birthwt$bwt)
str(birthwt["bwt"])
