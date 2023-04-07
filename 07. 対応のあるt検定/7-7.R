# 7-7

#t分布(自由度df)の両側確率5%の点を求める
#この場合、t=-2.778となった
values <- seq(-5,0,0.001)
result <- c()
significant_percentage = 0.05
threshold = significant_percentage / 2
t_005 <- NULL;
for (i in 1:length(values)){
  integ <- integrate(dt,-Inf,values[i],df=df)$value
  res <- abs(integ - threshold)
  result <- append(result,res)
  if(res<5e-5) {
    cat('t_005=',values[i],', residue=',res,'\n')
    t_005 <- values[i]
    break
  }
}

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
t <- t.test(dat$d)$statistic
x <- seq(-3,3,0.1)
df <- length(dat$d)-1
plot(x,dt(x,df),type='l')
abline(v=t_005,col='red')
abline(v=-t_005,col='red')
abline(v=t,col='blue')
