rm(list = ls())
cat("\014")

load("~/Documents/Umontreal/STT1700/GitHub/ch10/ex10-20twister.rda")
df <- `EX10-20TWISTER`
rm(`EX10-20TWISTER`)

plot(df$Year, df$Tornadoes)
reg.lin <- lm(Tornadoes ~ Year, data = df)
abline(reg.lin)

# http://r-statistics.co/Linear-Regression.html
beta.estimate <- summary(reg.lin)$coefficients["Year", "Estimate"]
std.error <-summary(reg.lin)$coefficients["Year", "Std. Error"]
beta.estimate + c(-1,1) * qt(0.975,60) * std.error

predict(reg.lin, data.frame(Year = c(2015)))

predict(reg.lin, data.frame(Year = c(2015)), interval = "predict")
