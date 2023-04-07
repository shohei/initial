
F1 <- c(3.1,3.14,3.08,3.2,2.84)
F2 <- c(2.76,2.88,2.88,3.08,2.93)
F3 <- c(3.19,3.13,3.45,3.34,3.00)
F4 <- c(2.84,2.72,2.61,2.65,2.61)
dat <- tibble (
  F1,F2,F3,F4
)
dat_long <- pivot_longer(dat,cols=c(F1,F2,F3,F4),names_to='feed',values_to='val')
res <- aov(val~factor(feed),data=dat_long)
F <- summary(res)[[1]][1,4]
df_1 <- summary(res)[[1]][1,1]
df_2 <- summary(res)[[1]][2,1]
x <- seq(0,20,0.1)
F_095 <- qf(0.95, df_1, df_2)
plot(x, df(x, df_1, df_2), 'l')
abline(v=F_095, col='red')
abline(v=F, col='blue')
