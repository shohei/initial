# 7-5

library(BSDA)
field <- c('A','B','C','D','E')
A <- c(3.2,4.0,3.5,3.1,3.2)
B <- c(3.4,4.3,3.9,3.5,3.1)
dat_ <- tibble (
  field,A,B
)
dat <- add_column (
  dat_,
  d = dat_$B-dat_$A
)
xbar_d <- mean(dat$d)
mu_d <- xbar_d
sigma_d <- 0.2
z <- mu_d/(sigma_d/sqrt(length(dat$d)))
z2 <- z.test(dat$d,sigma.x=sigma_d)$statistic
z_005 <- 1.96
x <- seq(-3,3,0.1)
plot(x,dnorm(x),type='l')
abline(v=z_005,col='red')
abline(v=-z_005,col='red')
abline(v=z)
abline(v=z2,col='blue')
