qnorm(0.05/2)

SimData <- rnorm(30, 70, 15)

(mean(SimData)-70)/(15/sqrt(30))

SimRes <- replicate(100000, {
  SimData <- rnorm(30, 70, 15)
  abs((mean(SimData)-70)/(15/sqrt(30)))<qnorm(1-0.05/2)
})

mean(SimRes)

SimData <- rnorm(30, 70, 15)

(1-pnorm(abs((mean(SimData)-70)/(15/sqrt(30)))))*2

TeachingDemos::z.test(SimData, mu = 70, stdev = 15)

sd(SimData)

t.test(SimData, mu = 70)

abs((mean(SimData)-70)/(sd(SimData)/sqrt(30)))
