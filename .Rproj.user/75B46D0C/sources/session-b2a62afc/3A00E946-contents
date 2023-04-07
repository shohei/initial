# 12-9

pesticide <- c(1.0,0.7,0.1,1.6,0.9,1.4,1.2,0.9,
               1.6,0.6,0.8,2.2,0.2,0.3,1.1,1.5)
firefly <- c(10,15,32,6,13,4,7,14,
             7,14,14,0,19,16,5,1)
dat <- tibble (
  pesticide, firefly
)
plot(dat$pesticide, dat$firefly)
sxy <- cov(dat$pesticide, dat$firefly)
sx <- sd(dat$pesticide)
sy <- sd(dat$firefly)
r <- sxy/(sx*sy)
# r <- cor(dat$pesticide, dat$firefly)




