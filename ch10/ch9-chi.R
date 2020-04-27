qchisq(.8,1)
pchisq(1.642374,1)
sprintf("%.100f",qchisq(.8,1))
1-pchisq(4.1626,4)
1-pchisq(15.64,5)
1-pchisq(97.439,5)
rbinom(1, 800, 0.3)

p <- .3
n <- 800
var <- p*(1-p)/n
s <- sqrt(var)
alpha = 5/100
z <- qnorm(1-alpha/2)
ICmin <- p - z*s
ICmax <- p + z*s
sprintf("%.100f",ICmin)
sprintf("%.100f",ICmax)
