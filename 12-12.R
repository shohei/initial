# 12-12

pesticide <- c(1.0,0.7,0.1,1.6,0.9,1.4,1.2,0.9,
               1.6,0.6,0.8,2.2,0.2,0.3,1.1,1.5)
firefly <- c(10,15,32,6,13,4,7,14,
             7,14,14,0,19,16,5,1)
dat <- tibble (
  pesticide, firefly
)
plot(dat$pesticide, dat$firefly)
r <- cor(dat$pesticide, dat$firefly)
n <- length(dat$pesticide)
t <- r*sqrt((n-2)/(1-r^2))
df_ <- n-2 
x <- seq(-10,10,0.1)
plot(x, dt(x, df_), 'l')
abline(v=qt(0.025, df_),col='red')
abline(v=qt(0.975, df_),col='red')
abline(v=t, col='blue')
