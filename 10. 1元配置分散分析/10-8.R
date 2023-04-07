# 10-8

F1 <- c(3.1,3.14,3.08,3.2,2.84)
F2 <- c(2.76,2.88,2.88,3.08,2.93)
F3 <- c(3.19,3.13,3.45,3.34,3.00)
F4 <- c(2.84,2.72,2.61,2.65,2.61)
dat <- tibble (
  F1,F2,F3,F4
)
dat

n_F1 <- length(dat$F1)
n_F2 <- length(dat$F2)
n_F3 <- length(dat$F3)
n_F4 <- length(dat$F4)
SS_F1 <- var(dat$F1) * (n_F1-1)
SS_F2 <- var(dat$F2) * (n_F2-1)
SS_F3 <- var(dat$F3) * (n_F3-1)
SS_F4 <- var(dat$F4) * (n_F4-1)
SS_within <- SS_F1+SS_F2+SS_F3+SS_F4
N <- n_F1+n_F2+n_F3+n_F4
k <- 4
df_within <- N - k
MS_within <- SS_within / df_within
SS_within
df_within
MS_within
