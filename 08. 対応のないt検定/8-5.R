# 8-5

disorder <- c(0.38,0.41,0.31,0.33,0.28)
healthy <- c(0.41,0.42,0.49,0.41,0.57)
dat <- tibble(
  disorder,healthy
)

xbar_A <- mean(dat$disorder)
xbar_B <- mean(dat$healthy)
nA <- length(dat$disorder)
nB <- length(dat$healthy)

sigma = 0.07

z <- (xbar_A-xbar_B)/(sigma*sqrt(1/nA+1/nB))
z_005 <- -1.96
x <- seq(-3,3,0.1)
plot(x,dnorm(x),'l')
abline(v=z_005,col='red')
abline(v=-z_005,col='red')
abline(v=z,col='blue')
