# 10-16

F <- MS_between/MS_within
tab <- tibble (
  '偏差平方和'=c(SS_between,SS_within,SS_total),
  '自由度'=c(df_between,df_within,df_total),
  '平均平方'=c(MS_between,MS_within,NA),
  '分散比'=c(F,NA,NA)
)

x <- seq(0,20,0.1)
plot(x, df(x, df_between, df_within),'l')
F_095 <- qf(0.95, df_between, df_within)
abline(v=F_095, col='red')
abline(v=F, col='blue')
