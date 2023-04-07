# 8-7

disorder <- c(0.38,0.41,0.31,0.33,0.28)
healthy <- c(0.41,0.42,0.49,0.41,0.57)
dat <- tibble(
  disorder,healthy
)

xbar_A <- mean(dat$disorder)
xbar_B <- mean(dat$healthy)
nA <- length(dat$disorder)
nB <- length(dat$healthy)
df <- nA+nB-2

t <- t.test(dat$disorder, dat$healthy, var.equal=TRUE)$statistic
t_005 <- qt(0.025, df)
x <- seq(-5,5,0.1)
plot(x,dt(x, df),'l')
abline(v=t_005,col='red')
abline(v=-t_005,col='red')
abline(v=t,col='blue')


