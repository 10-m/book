#!/usr/bin/Rscript --slave --vanilla

df <- data.frame(level=c(30,50,70,90,110,130), degree=c(5,10,15,40,20,10))
relative_degree <- df$degree / sum(df$degree)
average <- sum(df$level * relative_degree)
average
