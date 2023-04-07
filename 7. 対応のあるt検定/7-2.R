# 7-2
library(BSDA)
field <- c('A','B','C','D','E')
A <- c(3.2,4.0,3.5,3.1,3.2)
B <- c(3.4,4.3,3.9,3.5,3.1)
dat_ <- tibble (
  names,A,B
)
dat <- add_column (
  dat_,
  d = dat$A-dat$B
)
mu_d <- mean(dat$d)
sigma <- 10
sigma_d <- 10/sqrt(length(dat$d)) 
z <- mu_d/sigma_d
z

mu_d <- 
z.test(field)

