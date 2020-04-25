# rm(list = ls())
load("~/Documents/Umontreal/STT1700/git/ch10/exo_10.30/ex10-20twister.rda")
tornades <- `EX10-20TWISTER`
rm(`EX10-20TWISTER`)
plot(tornades$Year, tornades$Tornadoes)
reg<-lm(Tornadoes ~ Year, data = tornades)
abline(reg)
summary(reg)
