# 6-3
library(BSDA) # "Basic Statistics and Data Analysis" by Larry J. Kitchens.
height = c(128,132,121,133,121,123,124,136,132,144)
xbar = mean(height)
mu = xbar
sigma = 6
ci.z <- z.test(height,sigma.x=sigma)$conf.int
ci.z
hist(height)
abline(v=ci.z[1],col='blue')
abline(v=ci.z[2],col='blue')
