df <- read.csv('shidouhou.csv', head=T)
stat_test1 <- df$stat_test1
stat_test2 <- df$stat_test2
plot(stat_test1, stat_test2)
dev.off()
print(cov(stat_test1, stat_test2))
print(cov(stat_test1, stat_test2)/(sd(stat_test1)*sd(stat_test2)))
print(cor(stat_test1, stat_test2))

print(table(df$math))
print(table(df$stat))
print(table(df$math, df$stat))

math_0_1 <- ifelse(df$math=="好き", 1, 0)
print(df$math)
print(math_0_1)

stat_0_1 <- ifelse(df$stat=="好き", 1, 0)
print(cor(math_0_1, stat_0_1))

