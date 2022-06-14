data(birthwt, package = "MASS")

###

birthwt$race
?MASS::birthwt
birthwt$race <- factor(birthwt$race, levels = 1:3,
                       labels = c("Afro-amerikai", "Kaukázusi", "Egyéb"))
birthwt$race
str(birthwt)

table(birthwt$race)
prop.table(table(birthwt$race))

str(table(birthwt$race))

names(table(birthwt$race))[which.max(table(birthwt$race))]

barplot(table(birthwt$race))
pie(table(birthwt$race))

barplot(table(birthwt$race))
barplot(prop.table(table(birthwt$race)))

barplot(table(birthwt$race), main = "Rassz megoszlása",
        ylab = "Gyakoriság [fő]", ylim = c(0, 100))

###

birthwt$bwt

cut(birthwt$bwt, seq(500, 5000, 500))

table(cut(birthwt$bwt, seq(500, 5000, 500)))

hist(birthwt$bwt)
hist(birthwt$bwt, freq = FALSE)

hist(birthwt$bwt, 3)
hist(birthwt$bwt, 50)

hist(birthwt$bwt, seq(500, 5500, 1000))
hist(birthwt$bwt, c(500, seq(1500, 5500, 500)))

hist(birthwt$bwt, "Sturges")

plot(ecdf(birthwt$bwt))

data(geyser, package = "MASS")
plot(ecdf(geyser$waiting))
hist(geyser$waiting)

plot(seq(-3, 3, 0.1), dnorm(seq(-3, 3, 0.1), 1), type = "l")

plot(1:5000, dnorm(1:5000, birthwt$bwt[1], 100), type = "l")
for(i in 2:nrow(birthwt)) {
  lines(1:5000, dnorm(1:5000, birthwt$bwt[i], 100))
}

x <- 2000

dnorm(c(15, 25), 1, 2)
c(dnorm(15, 1, 2), dnorm(25, 1, 2))
dnorm(15, c(1, 3), 2)
c(dnorm(15, 1, 2), dnorm(15, 3, 2))
sapply(c(1, 3), function(m) dnorm(15, m, 2))

dnorm(x, birthwt$bwt[1], 100)
dnorm(x, birthwt$bwt[1:2], 100)
dnorm(x, birthwt$bwt, 100)
sum(dnorm(x, birthwt$bwt, 100))

sapply(1:5000, function(x) sum(dnorm(x, birthwt$bwt, 100)))

plot(1:5000, sapply(1:5000, function(x) sum(dnorm(x, birthwt$bwt, 200))),
     type = "l")
