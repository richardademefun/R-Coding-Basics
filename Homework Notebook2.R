#Clear Values in global environment
rm(list = ls())

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#Q1 Profit for each month

Profit <- revenue - expenses

#Profit after Tax(PAT)

PAT = Profit *0.7

#Profit Margin (PM)

PM = PAT/revenue

#Good Months and Bad Months (GM)

PAT_AVE <- mean(PAT)
GM <- PAT > PAT_AVE

#Location of max/ Best month

LOMax <- which.max(PAT)
paste("location of best month ist the ",LOMax,"th month")

#Location of min/Worst month (LOM)

LOMin <- which.min(PAT)
paste("location of worst month ist the ",LOMin,"rd month")



