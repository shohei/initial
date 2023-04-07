# 7-1

names <- c('A','B','C','D','E')
before <- c(158,148,132,107,142)
after <- c(134,135,116,110,127)

dat_ <- tibble (
  names,before,after
)
dat <- add_column (
  dat_,
  d = dat_$after-dat_$before
)
mu_d <- mean(dat$d)
sigma <- 10
sigma_d <- sigma/sqrt(length(dat$d)) 
z <- mu_d/sigma_d
# z2 <- z.test(dat$d, sigma.x=sigma)$statistic #z=z2
x <- seq(-3,3,0.1)
plot(x,dnorm(x,mean=0,sd=1),type='l')
abline(v=z)

values <- seq(-3,0,0.01)
result <- c()
significant_percentage = 0.05
threshold = significant_percentage / 2
z_005 <- NULL;
for (i in 1:length(values)){
  integ <- integrate(dnorm,-Inf,values[i])$value
  res <- abs(integ - threshold)
  result <- append(result,res)
  if(res<1e-5) {
    cat('z=',values[i],', residue=',res,'\n')
    z_005 <- values[i]
    break
  }
}

abline(v=z_005,col='red')

