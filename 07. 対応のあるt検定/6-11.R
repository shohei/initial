# 6-11

height = c(128,132,121,133,121,123,124,136,132,144)
xbar = mean(height)
mu = xbar
s = sd(height) 
ci.t <- t.test(height)$conf.int
ci.t
hist(height)
abline(v=ci.t[1],col='red')
abline(v=ci.t[2],col='red')
