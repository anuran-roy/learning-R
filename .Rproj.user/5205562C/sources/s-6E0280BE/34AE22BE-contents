pnorm(84, mean = 72, sd = 15.2) # Finds lower tail of 84 in a normal distribution where SD = 15.2
pnorm(84, mean = 72, sd = 15.2, lower.tail = FALSE) # Finds upper tail of 84 in a normal distribution where SD = 15.2
qt(c(0.025, 0.975), df = 5) # Quantile (Percentile function)

#############################################

############ Chi Square Testing #############

#############################################

library(MASS)
data("survey")

head(survey)
tbl = table(survey$Smoke, survey$Exer)
tbl

chisq.test(tbl)
