data(birthwt, package="MASS")

set.seed(1)
n <- 30
simData <- rnorm(n, 70, 10)
simData

mean(simData)
boxplot(simData)

simDes <- replicate(100000, {
  simData <- rnorm(n, 70, 10)
  mean(simData)
})

plot(density(simDes))
abline(v=70, col="red")
boxplot(simDes)
mean(simDes)
sd(simDes)

simDesMedian <- replicate(100000, {
  simData <- rnorm(n, 70, 10)
  median(simData)
})

plot(density(simDes), col = "green")
lines(density(simDesMedian), col= "blue")
abline(v=70, col="red")

simDesfurcsa <- replicate(100000, {
  simData <- rnorm(n, 70, 10)
  mean(simData[1:4])
})

plot(density(simDes), col = "green")
lines(density(simDesfurcsa), col= "blue")
abline(v=70, col="red")




