#!/usr/bin/Rscript --slave --vanilla

data <- c(6, 4, 6, 6, 6, 3, 7, 2, 2, 8)
data
mean(data)
deviation <- data - mean(data)
deviation
dispersion <- sum(deviation ** 2) / (length(data) - 1)
dispersion
sd <- sqrt(dispersion)
sd
sd(data)
