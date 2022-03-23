data(birthwt, package = "MASS")

birthwt$race <- factor(birthwt$race, levels = 1:3,
                       labels = c("kaukazusi", "afroamerikai", "egyeb"))
birthwt$race
birthwt$ui

table(birthwt$race, birthwt$ui) 
margin.table(table(birthwt$race, birthwt$ui), 1)

prop.table(table(birthwt$race, birthwt$ui))

prop.table(table(birthwt$race, birthwt$ui), 1) # 1 - sorok
                                               # 2 - oszlopok

barplot(prop.table(table(birthwt$race, birthwt$ui), 1)) 

prop.table(table(birthwt$race, birthwt$ui), 2) # oszlpok szerint

tabe <- outer(prop.table(table(birthwt$race)),
         prop.table(table(birthwt$ui)))
tabe
sum(tabe)
tabo <-prop.table(table(birthwt$race, birthwt$ui))
tabo
n<-nrow(birthwt)
n
sum((tabo-tabe*n)^2/(tabe*n))
chisq.test(birthwt$race, birthwt$ui)
chistat <- sum(tabo-tabe*n)^2/(tabo*n)
chistat

sqrt((chistat/n)/min(dim(tabo)-1))

####

birthwt[,c("bwt", "lwt")]
plot(birthwt$lwt, birthwt$bwt)

cov(birthwt$lwt, birthwt$bwt)
cor(birthwt$lwt, birthwt$bwt)
