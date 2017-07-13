A <- rnorm(50)
B <- rnorm(50)
C <- A * 0.5 + sqrt(0.75) * B
feeling <- 10 * A + 50
skill <- 10*C + 50
plot(feeling, skill, xlim = c(0, 100), ylim = c(0, 100))
points(50, 50, cex = 45)
legend(50, 10, legend = "sampled data", pch = 1)
legend(10, 100, legend = "population (in circle)")
dev.off()

df <- read.csv('./shidouhou.csv', header = T)
print(df$psych_test)

z_numer <- mean(df$psych_test - 12)
z_denom <- sqrt(10 / length(df$psych_test))
z_stat <- z_numer/z_denom
print(z_numer)
print(z_denom)
print(z_stat)

print(qnorm(0.025))
print(qnorm(0.975))

curve(dnorm(x), -3, 3)
abline(v = qnorm(0.025))
abline(v = qnorm(0.975))
dev.off()

print(2*pnorm(z_stat), lower.tail = FALSE)

# t distribution
curve(dt(x, 8), -5, 5)
curve(dt(x, 4), -5, 5, add = TRUE)
curve(dt(x, 2), -5, 5, add = TRUE)
curve(dt(x, 1), -5, 5, add = TRUE)

print(t.test(df$psych_test, mu = 12))

## 5.5
df <- read.csv('shidouhou.csv', head=T)
sample_cor <- cor(df$stat_test1, df$stat_test2)
print(sample_cor)

t_numerate <- sample_cor * sqrt(length(df$stat_test1) - 2)
t_denominator <- sqrt(1 - sample_cor^2)
t_statistics <- t_numerate / t_denominator
print(t_statistics)

print(qt(0.025, 18))
print(qt(0.975, 18))
print(qt(0.025, 18, lower.tail=FALSE))

print(pt(t_statistics, 18, lower.tail=FALSE) * 2)

cor.test(df$stat_test1, df$stat_test2)

## 5.6
print(table(df$math, df$stat))

chi <- chisq.test(table(df$math, df$stat), correct=FALSE)
print(chi)

pchisq(chi$statistic, 1, lower.tail=FALSE)

# qchisq(0.95, 1)
# qchisq(0.05, 1, lower.tail=FALSE)
