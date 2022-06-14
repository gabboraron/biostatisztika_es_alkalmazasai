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

pbinom(13, 20, 0.5, lower.tail = FALSE)

qbinom(0.05, 20, 0.5, lower.tail = FALSE)

plot(seq(0.51, 1, 0.01),
     pbinom(qbinom(0.05, 20, 0.5,
                   lower.tail = FALSE)-1,
            20, seq(0.51, 1, 0.01),
            lower.tail = FALSE),
     type = "l")

lines(seq(0.51, 1, 0.01),
     pbinom(qbinom(0.05, 50, 0.5,
                   lower.tail = FALSE)-1,
            50, seq(0.51, 1, 0.01),
            lower.tail = FALSE),
     col = "red")

plot(10:100,
     pbinom(qbinom(0.05, 10:100, 0.5,
                   lower.tail = FALSE)-1,
            10:100, 0.7,
            lower.tail = FALSE),
     type = "l")

ps <- seq(0.01, 0.99, 0.01)
RR <- c(0.9, 0.8, 0.5, 0.2, 0.1)
res <- expand.grid(pc = ps, RR = RR)
head(res)
res$pt <- res$pc * res$RR

power.prop.test(p1 = 0.8, p2 = 0.72, power = 0.8)
power.prop.test(p1 = 0.8, p2 = 0.08, power = 0.8)
power.prop.test(p1 = 0.8, p2 = 0.08, power = 0.9)

res$n <- sapply(1:nrow(res), function(i)
  power.prop.test(p1 = res$pc[i], p2 = res$pt[i],
                  power = 0.8)$n)

ggplot(res, aes(x = pc, y = n, group = RR,
                color = factor(RR))) +
  geom_line() +
  scale_y_log10(labels = scales::label_number_auto()) +
  annotation_logticks(sides = "l")

qbinom(0.05, 20, 0.5, lower.tail = FALSE)-1

qbinom(0.001, 20, 0.5, lower.tail = FALSE)-1

