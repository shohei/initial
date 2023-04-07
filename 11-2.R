# 11-2
library(multcomp)
F1 <- c(3.1,3.14,3.08,3.2,2.84)
F2 <- c(2.76,2.88,2.88,3.08,2.93)
F3 <- c(3.19,3.13,3.45,3.34,NA)
F4 <- c(2.84,2.72,2.61,2.65,2.61)
dat <- tibble (
  F1,F2,F3,F4
)
dat_long <- pivot_longer(dat,cols=c(F1,F2,F3,F4),names_to='feed',values_to='val')
dat_long$feed <- as.factor(dat_long$feed)
res.anova <- aov(val~feed,data=dat_long)
summary(res.anova)
res.tukey <- TukeyHSD(res.anova)
res.tukey
tuk <- glht(res.anova, mcp(feed='Tukey'))
cld(tuk, decreasing=FALSE)
boxplot(dat)
