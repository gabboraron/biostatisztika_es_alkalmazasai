SimData <- rnorm(30, 70, 10)

mean(SimData)
qnorm(1-0.05/2)*10/sqrt(30)

mean(SimData) + c(-1, 1)*qnorm(1-0.05/2)*10/sqrt(30)

mean(SimData) + c(-1, 1)*qnorm(1-0.01/2)*10/sqrt(30)

TeachingDemos::z.test(SimData, stdev = 10)

t.test(SimData)

###

(1/2)^20
(1/2)^200

(1/choose(90, 5))^8

(1/2)^20

(1/2)^20 + choose(20, 19)*(1/2)^20
(1/2)^20 + choose(20, 19)*(1/2)^20 +
  choose(20, 18)*(1/2)^20

pbinom(17, 20, 1/2, lower.tail = FALSE)

plot(10:19,
     pbinom(10:19, 20, 1/2, lower.tail = FALSE),
     type = "b")

plot(11:20, dbinom(11:20, 20, 0.5), type = "h")

library(ggplot2)


GyogyszerData <- data.frame(k = 11:20)
GyogyszerData$p <- dbinom(GyogyszerData$k, 20, 0.5)

ggplot(GyogyszerData,
       aes(x = k, y = p, ymax = p, ymin = 0,
           color = k > 13)) +
  geom_linerange() + geom_point() +
  scale_x_continuous(breaks = 11:20)

dev.off()
manipulate::manipulate({
  GyogyszerData <- data.frame(k = 11:20)
  GyogyszerData$p <- dbinom(GyogyszerData$k, 20, eff)
  
  ggplot(GyogyszerData,
         aes(x = k, y = p, ymax = p, ymin = 0,
             color = k > 13)) +
    geom_linerange() + geom_point() +
    scale_x_continuous(breaks = 11:20)
}, eff = manipulate::slider(0.5, 1, 0.5))

plot(seq(0.51, 1, 0.01),
     pbinom(13, 20, seq(0.51, 1, 0.01),
            lower.tail = FALSE),
     type = "l")
lines(seq(0.51, 1, 0.01),
     pbinom(15, 20, seq(0.51, 1, 0.01),
            lower.tail = FALSE),
     col = "red")
