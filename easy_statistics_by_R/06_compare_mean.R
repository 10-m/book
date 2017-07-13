#!/usr/bin/Rscript --slave --vanilla

df <- read.csv('./shidouhou.csv', header = T)
male <- subset(df, sex=="男")$stat_test1
female <- subset(df, sex=="女")$stat_test1
pool_sd <- sqrt(
((length(male) - 1) * var(male)
    + (length(female) - 1) * var(female))
/ (length(male) + length(female) - 2)
)
t_fraction <- pool_sd * sqrt(1 / length(male) + 1 / length(female))
t_numerate <- mean(male) - mean(female)
t_statistics <- t_numerate / t_fraction
t_statistics
qt(0.025, length(male) + length(female) - 2)
qt(0.025, length(male) + length(female) - 2, lower.tail=FALSE)
p_value <- 2 * pt(t_statistics, length(male) + length(female) - 2)
p_value

t.test(male, female, var.equal=TRUE)
