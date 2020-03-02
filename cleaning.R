d <- read.csv(file='/Users/Wendy/Desktop/Practium in Data Analysis/complaints.csv')
d <- select(d, -c(9,10,11,12,13,14))

d$Product[d$Product == "Credit reporting"] <- "Credit reporting, credit repair services, or other personal consumer reports"
d$Product[d$Product == "Prepaid card"] <- "Credit card or prepaid card"
d$Product[d$Product == "Credit card"] <- "Credit card or prepaid card"
d$Product[d$Product == "Money transfers"] <- "Money transfer, virtual currency, or money service"
d$Product[d$Product == "Payday loan"] <- "Payday loan, title loan, or personal loan"
d$Product[d$Product == "Checking or savings account"] <- "Bank account or service"
d$Product[d$Product == "Virtual currency"] <- "Money transfer, virtual currency, or money service"

d <- filter(d, Product %in% c('Bank account or service','Credit card or prepaid card','Credit reporting, credit repair services, or other personal consumer reports','Mortgage','Debt collection'))
