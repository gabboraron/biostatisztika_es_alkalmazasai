data(birthwt, package = "MASS")

n <- nrow(birthwt)

birthwt$race <- factor(birthwt$race, levels = 1:3,
                       labels = c("Kaukázusi",
                                  "Afro-amerikai",
                                  "Egyéb"))

birthwt$race
birthwt$ui

table(birthwt$race, birthwt$ui)

margin.table(table(birthwt$race, birthwt$ui), 1)
table(birthwt$race)

prop.table(table(birthwt$race, birthwt$ui))

prop.table(table(birthwt$race, birthwt$ui), 1)
prop.table(table(birthwt$race, birthwt$ui), 2)

table(birthwt$race, birthwt$ui)

prop.table(table(birthwt$race))
prop.table(table(birthwt$ui))

tabe <- outer(prop.table(table(birthwt$race)),
              prop.table(table(birthwt$ui)))
tabe
sum(tabe)
tabe*n

tabo <- table(birthwt$race, birthwt$ui)
tabo

(tabo-tabe*n)^2/(tabe*n)

sum((tabo-tabe*n)^2/(tabe*n))

chisq.test(birthwt$race, birthwt$ui)

chisqstat <- sum((tabo-tabe*n)^2/(tabe*n))

sqrt((chisqstat/n)/min(dim(tabo)-1))

mosaicplot(table(birthwt$race, birthwt$ui))

###

birthwt[, c("bwt", "lwt")]

plot(birthwt$lwt, birthwt$bwt)
plot(bwt ~ lwt, data = birthwt)

sum((birthwt$bwt-mean(birthwt$bwt))*
      (birthwt$lwt-mean(birthwt$lwt)))/(n-1)

cov(birthwt$bwt, birthwt$lwt)

cov(birthwt$bwt, birthwt$lwt)/(sd(birthwt$bwt)*sd(birthwt$lwt))
cor(birthwt$bwt, birthwt$lwt)
