

x.. <- read.csv(file="rent_mv_sa2.csv")

colnames(x..) <- c("Universe", "SA2", "INC", "Rents", "Count")

#Generate varible for missing info
x..$IsMissing <- grepl("Partial|All incomes", x..$INC)

#Compare missing info by rental band
biasbyrent <- round(prop.table(tapply(x..$Count, list(x..$Rents, x..$IsMissing), sum),1)*100,2)

#BarChartIt
barplot(biasbyrent[,2])



#Generate varible for missing info
x..$IsMissing <- grepl("Partial|All incomes", x..$INC)

#Compare missing info by rental band
biasbysub <- round(prop.table(tapply(x..$Count, list(x..$SA2, x..$IsMissing), sum),1)*100,2)

#BarChartIt
barplot(biasbysub[,2])

#Everything looks okay.
