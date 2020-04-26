rm(list = ls())
graphics.off()
cat("\014")

df <- get(load("~/Documents/Umontreal/STT1700/GitHub/ch10/ex10-20twister.rda"))
rm(`EX10-20TWISTER`)

plot(df$Year, df$Tornadoes)
lm <- lm(Tornadoes ~ Year, data = df)
abline(lm)

# http://r-statistics.co/Linear-Regression.html
beta.estimate <- summary(lm)$coefficients["Year", "Estimate"]
std.error <-summary(lm)$coefficients["Year", "Std. Error"]
beta.estimate + c(-1,1) * qt(0.975,60) * std.error

predict(lm, data.frame(Year = c(2015)))

predict(lm, data.frame(Year = c(2015)), interval = "predict")
