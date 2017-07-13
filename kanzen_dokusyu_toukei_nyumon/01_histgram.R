#!/usr/bin/Rscript --slave --vanilla

df <- read.csv("data.txt")
h <- hist(df$weight, breaks=c(seq(35, 70, 5)))
h$breaks
h$counts

