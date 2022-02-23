# Biostatisztika és alkalmazásai
- [Ferenci Tamás YouTube](https://www.youtube.com/c/FerenciTam%C3%A1s/videos)
- [Solymosi Norbert -  R - Erre könyv - pdf](https://cran.r-project.org/doc/contrib/Solymosi-Rjegyzet.pdf)

Számonkérések:
- 1 db beadandó - szorgalmi utolsó napjáig
- 1 db zh - félév felénél kb
- írásbeli vizsga

8:20-kor kezdünk - kivéve első három héten

## EA1 - R ismétlés - Statisztika alapfogalmai áttekintés
### Statisztika alapfogalmai áttekintés
- **valségszámítás -> statisztika ->alkalmazott stat ágak**
- **bioinformatika:** inkább stámítástechnikai kérdések, nagy adatbázisokon hatékony algoritmikus megoldások
- **biomatematika:** inkább nem statisztikai elsősorban analízisbeli modellezési eszközök, diffegyenletek haszálata

**milyen alapokra van szükség:**
- valségsázmítás, linalg
- mat stat
- orvosi ismeretek

**stat programcsomagok:**
- SAS - gyyógyszeripar kedveli
- SPSS - Általános célú stat programcsomag szociológusoknak
- R - kalsszikus akadémiai programcsomag

**demonstratív kérdések:**
- egy új vérnyomáscsökkentő csökkenti-e a vérnyomást
  - nem okoz epilepszia-kockázatot?
- milyen tényezők hatnak adott rákban a túlélési időre?
- mennyi jelen kurzus hallgatóinak átlagos testtömege?

**definíciók:**
- **véges sokaság - populáció**: egzakt halmaz amire a kérdésünk irányul: *mennyi jelen kurzus hallgatóinak átlagos testtömege?*
  - **fiktív végtelen sokaság**: nem névszerint felsorolható, de körülírható jellemzőkkel rendlekező halmaz, `eloszlás`sal megadott érték
- **megfigelési egység**: a populáció elemei
- **változ/ismérv**: a változó értékének meghatározása egy adott sokasági elemre: megfigyelés <- az összes eelem nagyon ritkán megfigyelhető
- **mintavételes helyzet**: általában nem tudjuk a teljes sokaságot megfigyleni, de a mgefigylehető része a **minta**
- **induktív statisztika**: hogyan tudnk kövekteztetni az egész sokaságra? *pl: hogyan mondható meg 100 szám átlaga ha csak 99-et ismerek?**
- **deskriptív statisztika**: a statisztika azon fejezete ami nem törődik a mintavétellel
- **proxy változók**: *pl: mekkora a szocio-ökonomia értéke valakinek - kereset, tásradalmi státusz, stb-?

#### mérési skálák/adatok jellemzői:
> mi az a művelet amit érdemes elvégezni?
- Stevens 1946:
  - minőségi változó:
    - **nominális skála:** egy ismérv nominális skálán van mérve, ha két megfigyelési egységgel nem ugyanazt az értéket veszik fel. *pl: szemszínek: egyik barna, másik kék, akkor nem adható hozzá átlág, stb...*
    - **ordinális skála:** a nominális + értlemezett, hogy melyik nagyobb. *pl: egy közgáz bsc és egy orvosi MD foknál egyik nagyobb, de semmi köze egymáshoz*
  - mennyiségi változó:  
    - **intervallum skála:** a különbségnek is van értelme. *pl: Aladár testőmérséklete 40, Béla 38: egyik nagyobb - másik kisebb; kivonhatóak egymásból; de Aadár hőmérsékletének semmi köze Béláéhoz*
    - **arányskála:** van értelme az osztásnak is. *pl: Aladár 50 kg, Béla 80 kg, akkor egyik nagyobb, A és B nek nincs köze egymáshoz, de mondható, hogy B x %-al nagyobb*

- **Diszkrét változó:** a kimenetek száma egy diszkrét halmaz: véges/megszámlálhatóan végtelen, *pl szemszín* a nominális és ordinális változók diszkrétek
- **folytonos változó:** kontinuum sázmosságú, *pl: testhő*, a mennyiségi változók folytonosak

***kivétel:** hányszor volt infarktusod?*

- időbeli jelleg:
  - **keresztmetszeti**: egy időpontban mértünk, nincs utánkövetés 
  - **longitudinális / hosszmetszeti / panel adat**: egymás után többször mértük le, az alanyoknak időbeli követése is van; cohort; eset kontrol;

- prevalencia: hányan vannak? stock jellegű
- incidnecia: hány új valmai van? flow jellegű


## R ismétlés
Egy running examplet használunk a félév során

- Birth Weight adatbázis (1986): hogyan prediktálható az újszükött születési tömege? 
  - keresztmetszeti adatbázis

gyerek születési tömege (g): `alacsoy < 2500 `

## gyak 2 - R ismétlés
https://www.w3schools.com/r/

fájl: [biostat_gy_2.r](https://github.com/gabboraron/biostatisztika_es_alkalmazasai/blob/main/biostat_gy_2.r)

- értékadás: `valtozo <- erteke`
- utolsó futási eredmény visszkaérése: `.last.value`
- függvények: `fuggveny(argumentum)`

- az R egy gyengén típusos nyelv

```R
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

szovegvektor <- c("alma", "fa")
``` 

típus tesztelése 
```R
is.character()
is.numeric()
is.integer()
is.double()
```

típuskényszerítés
```R
as.character(szam)
as.numeric("2.8")
as.numeric(TRUE)
as.numeric(FALSE)
as.logical(0)
as.logical(1)
as.logical(100)
as.logical(-10)

miafranc <- as.logical(-3.14)
```

### adatszerkezetek
> vektor
> - homogén
> - 1D
> - minden eleme ugyanolyan típusú

```R
szamvektor <- c(2,3.5,6,-4)
szamvektor
str(szamvektor)
```

pl: véletlen szám generálása `rnorm(darabszam)`


Az R-ben nincs skalár, csak egy elemű vektor.
```R
szam <- 5
c(szam,4)

seq(1, 13, 2)
seq(1, 13, 1)

1:13


szamvektor <- c(elso = 3, masodik =8.3, harmadik = -4)
szamvektor["elso"]
```

kulcsok lekérése kulcs-érték párokból álló vektorból: `names(szamvektor)`

```R
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
```

mátrix
```R 
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

# több dimenziós mátrix az array
```

dataframe
- 2D
- heterogén (egy oszlopon belül homogén!
- rectangular
```R
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
```

***a vesszőt nem szabad elfelejteni az indexeléshez!!***

minta adathalmazunk
```R
data(birthwt, package = "MASS")
str(birthwt)
birthwt[str]
colnames(birthwt)

birthwt$bwt    # vektornak adja ki

birthwt[[10]]  #
birthwt["bwt"] # megőrzi a dataframeségét
```

## EA-GY 3
helpet `?parancsnév` vagy `??` ha nem ismerjük a parancs nevétkérhetünk

függvényeknél az argumentumok  nevei elhagyhatóak, pl `rnorm(10,70,15)` és `rnorm(n=10, mean = 70, sd = 15)` ugyanaz; de az ajánlás szerint a jobb olvashatóság kredvéért érdemes megadni a neveket!

ciklusok helyett `apply` fv család

```R
# lapply(elem_amire_függvényt_hívunk, függvény)
lapply(1:3, rnorm)
```

feltételes
```R
birthwt$ht <- birthwt$ht == 1
```

***packagek:*** 
```R
install.packages("psych")
psych::describe(birthwt)
library(psych)
```
bővebben: [gy3.r](https://github.com/gabboraron/biostatisztika_es_alkalmazasai/blob/main/gy3.r)

