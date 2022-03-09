data(birthwt, package="MASS")

summary(birthwt)


density(birthwt$bwt)

plot(density(birthwt$bwt))

plot(density(birthwt[birthwt$smoke = 0, ], bwt), col="?red") 

birthwt2 = birthwt
birthwt2$bwt[1] <- 1000000 # hibát teszünk az adatbázisba
mean(birthwt2$bwt)
mean(birthwt$bwt)

bwt <- birthwt$bwt
bwt2 <- birthwt2$bwt

mean(birthwt2$bwt, trim = 0.05)
median(bwt)
median(bwt2)

simdata <- rlnorm(2000)
plot(density(simdata))
plot(density(log(simdata)))

median(simdata)
mean(simdata)

sum(simdata[simdata<mean(simdata)])

median(simdata<mean(simdata))

exp(mean(log(simdata)))
mean(simdata)
median(simdata)

quantile(bwt, 0.25)
quantile(bwt)
quantile(bwt, seq(0.1, 0.9,0.1))
quantile(bwt, seq(0.1, 0.9,0.1))
?quantile

boxplot(bwt, seq(0.1, 0.9,0.1))
