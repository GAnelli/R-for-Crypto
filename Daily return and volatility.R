#https://www.youtube.com/watch?v=8q_KCFKvnxI

library(quandl)

goog <- quandl("WIKI/GOOG", start_date="2014-07-15", end_date="2015-07-15")

gclose <- goog$Close

n<-length(gClose)

returns.daily.simple <- gClose[-n]/gClose[-1]-1
returns.daily.log <- log(gClose[-n]/gClose[-1])

vol.daily <- sd(returnds.daily.simple)
vol.annual <- vol.daily *sqrt(250)
print(vol.annual)

