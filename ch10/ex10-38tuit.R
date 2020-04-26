rm(list = ls())
cat("\014")
graphics.off()

load("~/Documents/Umontreal/STT1700/GitHub/ch10/ex10-38tuit.rda")
df <- `EX10-38TUIT`
rm(`EX10-38TUIT`)

plot(df$Y2008, df$Y2014, xlab = "Frais de scolarité en 2008", ylab = "Frais de scolarité en 2014")
lm <- lm(Y2014 ~ Y2008, data = df)
abline(reg.lin)

r <- cor(df$Y2008,df$Y2014)
sx <- sd(df$Y2008)
sy <- sd(df$Y2014)
b_hat <- r * sy/sx
x_bar <- mean(df$Y2008)
y_bar <- mean(df$Y2014)
a_hat <- y_bar - b_hat * x_bar
summary(lm)
sprintf("%.100f",a_hat)
sprintf("%.100f",b_hat)

plot(lm)
