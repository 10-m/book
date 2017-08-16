#!/usr/bin/Rscript --slave --vanilla

return_rate <- 0.05
SD <- 0.045
national_debt <- 0.03
SPM <- (return_rate - national_debt) / SD
print(SPM)

SPM <- 0.5
SD <- 0.05
national_debt <- 0.03
return_rate <- SPM * SD + national_debt
print(return_rate)
