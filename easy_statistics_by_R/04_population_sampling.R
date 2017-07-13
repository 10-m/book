height <- c(165.2, 175.9, 161.7, 174.2, 172.1, 163.3, 170.9, 170.6, 168.4, 171.3)
print(height)
print(var(height))

dice <- ceiling(runif(n=6, min=0, max=6))
print(table(dice))

dice6thousand <- ceiling(runif(n=6000, min=0, max=6))
print(table(dice6thousand))

# normal_dist
curve(dnorm(x, mean = 0, sd = 1), from = -4, to = 4)
curve(dnorm(x, mean = 1, sd = 1), from = -4, to = 4, add = TRUE)
curve(dnorm(x, mean = 0, sd = 2), from = -4, to = 4, add = TRUE)
dev.off()

sample = rnorm(n = 10000, mean = 50, sd = 10)
hist(sample)
dev.off()

samples_mean <- numeric(length=10000)
for (i in 1:10000) {
    # N(50, 10^2)からn=10の標本を抽出
    sample <- rnorm(n = 10, mean = 50, sd = 10)
    samples_mean[i] <- mean(sample)
}
hist(samples_mean)
dev.off()

error_under_5 <- ifelse(abs(samples_mean - 50) <=5, 1, 0)
print(table(error_under_5))

hist(samples_mean, freq = FALSE)
curve(dnorm(x, mean = 50, sd = sqrt(10)), add = TRUE)

sample_variance <- numeric(length=10000)
unbiased_variance <- numeric(length=10000)

for (i in 1:10000) {
    sample <- rnorm(n = 10, mean = 50, sd = 10) #exact 10 from N(50,10^2)
    sample_variance[i] <- mean((sample - mean(sample))^2)
    unbiased_variance[i] <- var(sample)
}
print(mean(sample_variance))
print(mean(unbiased_variance))

print(sd(sample_variance))
print(sd(unbiased_variance))

sample_variance_over100 <- ifelse(sample_variance > 200, 1, 0)
table(sample_variance_over100)

unbiased_variance_over100 <- ifelse(unbiased_variance > 200, 1, 0)
table(unbiased_variance_over100)

sample_mean <- numeric(length = 10000)
sample_median <- numeric(length = 10000)

for (i in 1:10000) {
    sample <- rnorm(n = 10, mean = 50, sd = 10)
    sample_mean[i] <- mean(sample)
    sample_median[i] <- median(sample)
}
mean(sample_mean)
mean(sample_median)

sd(sample_mean)
sd(sample_median)
