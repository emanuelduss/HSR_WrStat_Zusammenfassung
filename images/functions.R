#!/usr/bin/R -f
#
# Diverse Verteilungen plotten
#

attach(mtcars) # Multilayout

# layout(matrix(c(1,1,2,3), 2, 2, byrow = TRUE)) # oder par(mfrow=c(2,2))

# Normalverteilung
pdf("normalverteilung_generated.pdf")
layout(matrix(c(1,1,2,3), 2, 2, byrow = TRUE))

z = rnorm(1000)
hist(z, prob=T, main="Normalverteilung")
lines(density(z, bw=.5), col="red", lwd=2)

x = seq(from = -4, to = 4, by = 0.1)
fx = dnorm(x)
plot(x, fx, type = "l", main = "Dichtefunktion", xlab = "x", ylab = "phi(x)")

fx = pnorm(x)
plot(x, fx, type = "l", main = "Verteilungsfunktion", xlab = "x", ylab = "F(x)")

# Gleichverteilung
pdf("gleichverteilung_generated.pdf")
layout(matrix(c(1,1,2,3), 2, 2, byrow = TRUE))

z = runif(1000)
hist(z, prob=T, main="Gleichverteilung")
lines(density(z, bw=.5), col="red", lwd=2) 

x = seq(from = -0.5, to = 1.5, by = 0.1)
fx = dunif(x)
plot(x, fx, type = "l", main = "Dichtefunktion", xlab = "x", ylab = "phi(x)")

fx = punif(x)
plot(x, fx, type = "l", main = "Verteilungsfunktion", xlab = "x", ylab = "F(x)")

# Exponentialverteilung
pdf("exponentialverteilung_generated.pdf")
layout(matrix(c(1,1,2,3), 2, 2, byrow = TRUE))

z = rexp(1000)
hist(z, prob=T, main="Exponentialverteilung")
lines(density(z, bw=.4), col="red", lwd=2) 

x = seq(from = -1, to = 6, by = 0.1)
fx = dexp(x)
plot(x, fx, type = "l", main = "Dichtefunktion", xlab = "x", ylab = "phi(x)")

fx = pexp(x)
plot(x, fx, type = "l", main = "Verteilungsfunktion", xlab = "x", ylab = "F(x)")
