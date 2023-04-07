#1-7

#Q1. 帰無仮説H0: 聞き耳が右耳である人と聞き耳が左耳である人には差はない
#Q2. dbinom(n,x,p)
#Q3. 

n = 18 
P = 0.5
d <- tibble(x=numeric(), p=numeric())
for (x in 0:n) {
  d <- add_row(d, tibble(x=x , p=dbinom(x, n, P)))
}
plot(d$x-0.5, d$p, type='s') 
E = sum(d$x * d$p)
abline(v=14)

#sum(d$p[14:19])=0.04812622...~4.8%より,
# 5%の棄却域は13.5くらいにある. 
# 13.5より大きければH0は棄却.
# 今回は14なのでH0は棄却→有意差がある
# したがって右耳と左耳には差がある

x <- seq(0,n)
B <- binom.test(14, n, P)$statistic
plot(x, dbinom(x, n, P), 's')
abline(v=qbinom(0.975, n, P), col='red')
abline(v=B, col='blue')

