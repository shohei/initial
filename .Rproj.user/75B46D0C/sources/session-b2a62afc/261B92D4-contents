#1-4
n = 6
P = 0.5
d <- tibble(x=numeric(), p=numeric())
for (x in 0:n) {
  d <- add_row(d, tibble(x=x , p=dbinom(x, n, P)))
}

plot(d$x-0.5, d$p, type='s') 
E = sum(d$x * d$p)

