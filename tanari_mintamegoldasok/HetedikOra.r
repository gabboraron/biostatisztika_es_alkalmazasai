set.seed(1)

SimRes <- replicate(100000, {
  SimData <- rnorm(30, 70, 10)
  mean(SimData)
})

plot(density(SimRes), ylim = c(0, 0.3))
abline(v = 70, col = "red")

SimRes50 <- replicate(100000, {
  SimData <- rnorm(50, 70, 10)
  mean(SimData)
})

lines(density(SimRes50), col = "blue")

SimRes100 <- replicate(100000, {
  SimData <- rnorm(100, 70, 10)
  mean(SimData)
})

lines(density(SimRes100), col = "orange")

sd(SimRes)
sd(SimRes50)
sd(SimRes100)

SEvsn <- sapply(seq(10, 200, 10), function(n) {
  SimRes <- replicate(100000, {
    SimData <- rnorm(n, 70, 10)
    mean(SimData)
  })
  sd(SimRes)
})

plot(seq(10, 200, 10), SEvsn, type = "b",
     xlab = "Mintanagyság", ylab = "SE")

###

plot(seq(-1, 5, 0.1), dlnorm(seq(-1, 5, 0.1)),
     type = "l")

SimRes <- replicate(100000, {
  SimData <- rlnorm(10)
  mean(SimData)
})

plot(density(SimRes), xlim = c(0, 5),
     ylim = c(0, 1.5))
abline(v = exp(1/2), col = "red")

mean(SimRes)
exp(1/2)

SimRes20 <- replicate(100000, {
  SimData <- rlnorm(20)
  mean(SimData)
})

mean(SimRes20)

lines(density(SimRes20), col = "blue")

SimRes50 <- replicate(100000, {
  SimData <- rlnorm(50)
  mean(SimData)
})

lines(density(SimRes50), col = "orange")

###

SimRes <- replicate(100000, {
  SimData <- rnorm(5, 70, 10)
  mean((SimData-mean(SimData))^2)
})

plot(density(SimRes), xlim = c(0, 400))
abline(v = 100, col = "red")

mean(SimRes)

Meanvsn <- sapply(seq(3, 30, 1), function(n) {
  SimRes <- replicate(100000, {
    SimData <- rnorm(n, 70, 10)
    mean((SimData-mean(SimData))^2)
  })
  mean(SimRes)
})

plot(3:30, Meanvsn, type = "b", ylim = c(60, 110))
abline(h = 100, col = "red")

cbind(3:30, Meanvsn, Meanvsn*(3:30)/(2:29))

###

qnorm(1-0.05/2)

SimRes <- replicate(100000, {
  SimData <- rnorm(30, 70, 10)
  mean(SimData)
})

qnorm(1-0.05/2)*10/sqrt(30)
mean((70-qnorm(1-0.05/2)*10/sqrt(30) < SimRes)&
       (SimRes < 70 + qnorm(1-0.05/2)*10/sqrt(30)))

qnorm(1-0.01/2)*10/sqrt(30)
mean((70-qnorm(1-0.01/2)*10/sqrt(30) < SimRes)&
       (SimRes < 70 + qnorm(1-0.01/2)*10/sqrt(30)))

SimRes <- rnorm(30, 70, 10)
SimRes

mean(SimRes)
qnorm(1-0.05/2)*10/sqrt(30)
