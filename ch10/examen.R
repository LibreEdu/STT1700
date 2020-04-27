a <- (173.5249 + 179.7944 )/2
sprintf("%.100f",a)
2.2e-16 


mu1 <- 1045
n1 <- 17
s1 <- 77.25
mu2 <- 999
n2 <- 13
s2 <- 60.46
t <- (mu1-mu2)/sqrt(s1^2/n1 + s2^2/n2)
t
1-pt(t,n2-1)

n <- 1508
p <- 302/n
# alpha = 5/100 => IC à 95 %
alpha <- 10/100
z <- qnorm(1-alpha/2)
marge.erreur <- z*s
marge.erreur
ICmin <- p - marge.erreur
ICmax <- p + marge.erreur
ICmin
ICmax


#p <- .2
alpha <- 5/100
z <- qnorm(1-alpha/2)
marge.erreur <- 0.015
n <- p * (1-p) * z^2 / marge.erreur^2
n
ceiling(n)



n1 <- 1504
n2 <- 1001
p1 <- 1023/n1
p2 <- 571/n2
p1
p2
s <- sqrt( p1*(1-p1)/n1 +  p2*(1-p2)/n2)
stat = (p1-p2)/s
stat


deltaP <- p1 - p2
deltaP
alpha <- 5/100
z <- qnorm(1-alpha/2)
z
ICmin <- deltaP - z * s
ICmax <- deltaP + z - s
ICmin
ICmax


163/250
226/528*102



f1 <- 44
f2 <- 95
f3 <- 163
h1 <- 58
h2 <- 81
h3 <- 87
f <- f1 + f2 + f3
h <- h1 + h2 + h3
t <- f + h
d1 <- f1 + h1
d2 <- f2 + h2
d3 <- f3 + h3
pf <- f/t
ph <- h/t
ef1 <- d1*pf
ef2 <- d2*pf
ef3 <- d3*pf
eh1 <- d1*ph
eh2 <- d2*ph
eh3 <- d3*ph
cf1 <- (f1 - ef1)^2/ef1
cf2 <- (f2 - ef2)^2/ef2
cf3 <- (f3 - ef3)^2/ef3
ch1 <- (h1 - eh1)^2/eh1
ch2 <- (h2 - eh2)^2/eh2
ch3 <- (h3 - eh3)^2/eh3
chi2 = cf1 + cf2 + cf3 + ch1 + ch2 + ch3
chi2

p <- 5/100
df <- 2
qchisq(1-p,df)

14.7368 - 0.2457 * 1.96
14.7368 + 0.2457 * 1.96
22.8951 + 14.7368 * 50