#rm(list = ls())
load("~/Documents/Umontreal/STT1700/GitHub/ch10/ex10-20twister.rda")
tornades <- `EX10-20TWISTER`
rm(`EX10-20TWISTER`)
plot(tornades$Year, tornades$Tornadoes)
reg<-lm(Tornadoes ~ Year, data = tornades)
abline(reg)

#http://r-statistics.co/Linear-Regression.html
beta.estimate <- summary(reg)$coefficients["Year", "Estimate"]
std.error <-summary(reg)$coefficients["Year", "Std. Error"]
beta.estimate + c(-1,1) * qt(0.975,60) * std.error
