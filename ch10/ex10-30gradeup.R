rm(list = ls())
cat("\014")

load("~/Documents/Umontreal/STT1700/GitHub/ch10/ex10-30gradeup.rda")
df <- `EX10-30GRADEUP`
rm(`EX10-30GRADEUP`)

plot(df$Year, df$GPA)
reg.lin <- lm(GPA ~ Year, data = df)
abline(reg.lin)

r <- cor(df$Year,df$GPA)
sx <- sd(df$Year)
sy <- sd(df$GPA)
b_hat <- r * sy/sx
x_bar <- mean(df$Year)
y_bar <- mean(df$GPA)
a_hat <- y_bar - b_hat * x_bar
summary(reg.lin)
-1.859e+01
sprintf("%.100f",a_hat)
1.076e-02
sprintf("%.100f",b_hat)

# intervalle de confiance de niveau 95 % pour la pente 
beta.estimate <- summary(reg.lin)$coefficients["Year", "Estimate"]
std.error <-summary(reg.lin)$coefficients["Year", "Std. Error"]
p <- 0.975
df <- 2
IC_min <- beta.estimate - qt(p,df) * std.error
IC_max <- beta.estimate + qt(p,df) * std.error
sprintf("%.100f",IC_min)
sprintf("%.100f",IC_max)
beta.estimate + c(-1,1) * qt(p,df) * std.error
