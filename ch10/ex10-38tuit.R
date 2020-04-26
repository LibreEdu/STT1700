rm(list = ls())
graphics.off()
cat("\014")

df <- get(load("~/Documents/Umontreal/STT1700/GitHub/ch10/ex10-38tuit.rda"))
rm(`EX10-38TUIT`)

plot(df$Y2008, df$Y2014, xlab = "Frais de scolarité en 2008", ylab = "Frais de scolarité en 2014")
lm <- lm(Y2014 ~ Y2008, data = df)
abline(lm)

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

df <- cbind(df, lm$residuals)
colnames(df)[6] <- "Residu"
plot(df$Y2008, df$Residu, xlab = "Frais de scolarité en 2008", ylab = "Résidus")
lm2 <- lm(Residu ~ Y2008, data = df)
abline(lm2)

qqnorm(df$Y2014)
qqline(df$Y2014)

qqnorm(df$Residu)
qqline(df$Residu)

qqnorm(lm$residuals)
qqline(lm$residuals)

lm3 <- lm(Y2014 ~ Y2008, data = df, subset=(CalifSchool==0))
lm3$coefficients
qqnorm(lm3$residuals)
qqline(lm3$residuals)
