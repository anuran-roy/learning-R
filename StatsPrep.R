x <- c(45, 55, 70)
y <- c(905, 890, 870)

tbl <- rbind(x,y)
rownames(tbl) <- c("Defective", "Non-defective")
colnames(tbl) <- c("Day", "Evening", "Night")

scol <- colSums(tbl)
srow <- rowSums(tbl)
tot <- sum(scol)
ex <- matrix(0, nrow = length(srow), ncol = length(scol))
ls <- c()
for(i in 1:length(srow)){
  for(j in 1:length(scol)){
    exp <- srow[i]*scol[j]/tot
    print(i)
    print(j)
    ex[i][j] <- exp
    print(exp)
    # append(ls, exp, 1)
  }
}
ls
chisq.test(tbl)
ex
