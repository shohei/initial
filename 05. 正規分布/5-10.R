# 5-10

mu_A = 8
mu_B = 5
sigma_A = 1
sigma_B = 1.2
mu_xa_xb = mu_A - mu_B
sigma_xa_xb = sqrt(sigma_A^2 + sigma_B^2)
integrate(dnorm, -Inf, 4, mean=mu_xa_xb, sd=sigma_xa_xb)


