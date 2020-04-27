rm(list = ls())
graphics.off()
cat("\014")

df <- get(load("~/Documents/Umontreal/STT1700/GitHub/ch10/ex10-38tuit.rda"))
rm(`EX10-38TUIT`)

df2 <- subset(df, CalifSchool==0)

lm <- lm(Y2014 ~ Y2008, data = df, subset=(CalifSchool==0))
beta.estimate <- summary(lm)$coefficients["Y2008", "Estimate"]
beta.estimate
std.error <-summary(lm)$coefficients["Y2008", "Std. Error"]
std.error

beta.estimate/std.error

p <- 0.975
df <- 26

2 * (1 - pt(beta.estimate/std.error, df))

beta.estimate + c(-1,1) * qt(p,df) * std.error

r <- cor(df2$Y2008,df2$Y2014)
r^2
