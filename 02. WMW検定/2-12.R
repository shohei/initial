#2-12

obesity <- c(4.6,5.6,3.2,3.2,3.7,4.0,5.0,4.6)
non_obesity <- c(4.6,4.9,7.1,6.0,5.2,3.9,5.3,5.8)
nA <- length(obesity)
nB <- length(non_obesity)
wilcox.test(obesity,non_obesity)

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
  # U_ = min(U1_, U2_)
  U_ = max(U1_, U2_)
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
sum(U.table$P[20:33])
abline(v=19.5)

wilcox.test(A,B)
