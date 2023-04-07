#2-7
#compute U-distribution from given nA and nB
nA <- 4
nB <- 4
all <- 1:(nA+nB)
combA <- combn(all, nA)
n_combA <- length(combA[1,])
U <- c()
for (i in 1:n_combA) {
  A_ <- combA[,i]
  B_ <- all[!all %in% combA[,i]]
  nA_ <- length(A_)
  nB_ <- length(B_)
  RA_ = sum(rank(c(A_,B_))[1:nA_])
  RB_ = sum(rank(c(A_,B_))[(nA_+1) : (nA_+nB_)])
  U1_ = nA_*nB_ + 1/2*(nA_*(nA_+1))-RA_
  U2_ = nA_*nB_ + 1/2*(nB_*(nB_+1))-RB_
  U_ = min(U1_, U2_)
  # U_ = max(U1_, U2_)
  # cat('U1:',U1_,', U2:',U2_,', U:',U_,'\n')
  U <- append(U, U_)
}
UT <- data.frame(table(U))
U.table_ <- add_column(
  tibble(
    U=as.integer(UT$U),
    Freq=UT$Freq
  ),
  tibble (
    p = rep(1/n_combA,length(UT$U))
  )
)
U.table <- add_column(
  U.table_,
  tibble(
    P = U.table_$Freq*U.table_$p
  )
)
plot(U.table$U-0.5, U.table$P,type='s')
abline(v=1)


