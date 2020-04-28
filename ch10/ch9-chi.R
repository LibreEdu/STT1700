qchisq(.8,1)
pchisq(1.642374,1)
sprintf("%.100f",qchisq(.8,1))
1-pchisq(4.1626,4)
1-pchisq(15.64,5)
1-pchisq(97.439,5)
rbinom(2, 800, 0.3)

cat("\014")
p <- .43
n <- 1430
var <- p*(1-p)/n
s <- sqrt(var)

# alpha = 5/100 => IC à 95 %
alpha <- 5/100
z <- qnorm(1-alpha/2)
# alpha = 5/100 => z =1.96
sprintf("%.100f",z)

marge.erreur <- z*s
sprintf("%.100f",marge.erreur)

ICmin <- p - marge.erreur
ICmax <- p + marge.erreur
sprintf("%.100f",ICmin)
sprintf("%.100f",ICmax)

# Taille échantillonale : arrondir au plafond
p <- .2
alpha <- 5/100
z <- qnorm(1-alpha/2)
z
marge.erreur <- 0.07
n <- p * (1-p) * z^2 / marge.erreur^2
n
ceiling(n)

# Intervalle de confiance, différence de deux proportions
n1 <- 20
n2 <- 20
p1 <- 9/n1
p2 <- 6/n2

deltaP = p1 - p2
alpha <- 5/100
z <- qnorm(1-alpha/2)
ICmin = deltaP - z * sqrt( p1*(1-p1)/n1 + p2*(1-p2)/n2 )
ICmax = deltaP + z * sqrt( p1*(1-p1)/n1 + p2*(1-p2)/n2 )
ICmin
ICmax
