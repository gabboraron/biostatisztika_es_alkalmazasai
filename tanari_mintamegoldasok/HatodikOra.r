n <- 30

set.seed(1)
SimData <- rnorm(n, 70, 10)
SimData

mean(SimData)

SimRes <- replicate(100000, {
  SimData <- rnorm(n, 70, 10)
  mean(SimData)
})

plot(density(SimRes))
abline(v = 70, col = "red")

mean(SimRes)
sd(SimRes)

SimResMedian <- replicate(100000, {
  SimData <- rnorm(n, 70, 10)
  median(SimData)
})

plot(density(SimRes), col = "orange")
lines(density(SimResMedian), col = "blue")
abline(v = 70, col = "red")

SimResFurcsa <- replicate(100000, {
  SimData <- rnorm(n, 70, 10)
  SimData[1]
})

plot(density(SimRes), col = "orange")
lines(density(SimResFurcsa), col = "blue")
abline(v = 70, col = "red")
