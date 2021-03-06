library(quantmod)
library(Quandl)

# quandl data: Oil Production United States
data <- read.csv('http://www.quandl.com/api/v1/datasets/UN/CRUDEPETROLEUMPRODUCTION_USA.csv?
&auth_token=ELNA3oxQaF5yMFhZfQR7&trim_start=1990-12-31&trim_end=2009-12-31&sort_order=desc', colClasses=c('Year'='Date'))

# create xts data from data data frame
xts <- xts(data[,2], order.by=as.Date(data[,1]))

# chart xts series using quantmod
chart_Series(xts)
