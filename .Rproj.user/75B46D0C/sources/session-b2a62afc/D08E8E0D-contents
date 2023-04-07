# 8-1
library(BSDA)
A <- c(118,132,120,115,113)
B <- c(129,126,134,135,131)
dat <- tibble (
  A,B
)
xbar_A <- mean(dat$A)
xbar_B <- mean(dat$B)
nA <- length(dat$A)
nB <- length(dat$B)

sigma = 6

z <- (xbar_A-xbar_B)/(sigma*sqrt(1/nA+1/nB))
z_005 <- -1.96
x <- seq(-3,3,0.1)
plot(x,dnorm(x),'l')
abline(v=z_005,col='red')
abline(v=-z_005,col='red')
abline(v=z,col='blue')



