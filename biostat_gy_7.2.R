## szimulációval a várható érték egy random mintára

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

plot(density(simDes), yline = c(0,3))
abline(v=70, col="red")

##
n <- 50
simData <- rnorm(n, 70, 10)
simData

mean(simData)

simDes <- replicate(100000, {
  simData <- rnorm(n, 70, 10)
  mean(simData)
})

lines(density(simDes), col="blue")
abline(v=70, col="red")


simDes <- replicate(100000, {
  simData <- rnorm(100, 70, 10)
  mean(simData)
})

lines(density(simDes), col="orange")


simDes <- replicate(100000, {
  simData <- rnorm(30, 70, 10)
  mean(simData)
})

lines(density(simDes), col="red")

sevin  <- apply(seq(10, 200, 10), function(n) {
  simDes <- replicate(100000, {
    simData <- rnorm(n, 70, 10)
    mean(simData)
  })
  sd(simDes)
})

plot(seq(-1, 5, 0.1), dlnorm(seq(-1, 5, 0.1)),
     type = "l")


simDes20 <- replicate(100000, {
  simData <- rlnorm(20)
  mean(simData)
})

simDes50 <- replicate(100000, {
  simData <- rlnorm(50)
  mean(simData)
})

lines(density(simDes20, 20), col= "blue")
lines(density(simDes50, 50), col= "orange")

## sokasági varianciát becsülni mintavarianciával

simDes <- replicate(100000, {
  simData <- rnorm(5, 70, 10)
  mean((simData - mean(simData))^2)
})

plot(density(simDes), xlim= c(0, 400))
abline(v = 100, col="red")

mean(simDes)

