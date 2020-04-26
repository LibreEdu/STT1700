#rm(list = ls())
load("~/Documents/Umontreal/STT1700/GitHub/ch10/ex10-30gradeup.rda")
df <- `EX10-30GRADEUP`
rm(`EX10-30GRADEUP`)
plot(df$Year, df$GPA)
reg.lin <- lm(GPA ~ Year, data = df)
abline(reg.lin)
summary(reg.lin)
r<-cor(df$Year,df$GPA)
sx <- sd(df$Year)
sy <- sd(df$GPA)
b <- r * sy/sx
xb <- mean(df$Year)
yb <- mean(df$GPA)
a <- yb - b * xb
-1.859e+01
sprintf("%.100f",a)
1.076e-02
sprintf("%.100f",b)
