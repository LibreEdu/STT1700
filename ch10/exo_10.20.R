#rm(list = ls())
load("~/Documents/Umontreal/STT1700/GitHub/ch10/ex10-20twister.rda")
data.frame <- `EX10-20TWISTER`
rm(`EX10-20TWISTER`)
plot(data.frame$Year, data.frame$Tornadoes)
reg.lin <- lm(Tornadoes ~ Year, data = data.frame)
abline(reg.lin)

#http://r-statistics.co/Linear-Regression.html
beta.estimate <- summary(reg.lin)$coefficients["Year", "Estimate"]
std.error <-summary(reg.lin)$coefficients["Year", "Std. Error"]
beta.estimate + c(-1,1) * qt(0.975,60) * std.error

predict(reg.lin, data.frame(Year = c(2015)))

predict(reg.lin, data.frame(Year = c(2015)), interval = "predict")
