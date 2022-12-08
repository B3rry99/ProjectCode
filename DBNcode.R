library(dbnR)
library(data.table)
summary(SentimentData3)
head(SentimentData3)

  
SentimentData3$Trump = as.double(SentimentData3$Trump)
SentimentData3$Biden = as.double(SentimentData3$Biden)
SentimentData3$Elections2020  = as.double(SentimentData3$Elections2020)
SentimentData3$KamalaHarris = as.double(SentimentData3$KamalaHarris)
SentimentData3$MAGA = as.double(SentimentData3$MAGA)
SentimentData3$COVID = as.double(SentimentData3$COVID)
SentimentData3$TrumpMeltdown = as.double(SentimentData3$TrumpMeltdown)
SentimentData3$Democrats = as.double(SentimentData3$Democrats)
SentimentData3$GOP = as.double(SentimentData3$GOP)
SentimentData3$Pennsylvania = as.double(SentimentData3$Pennsylvania)
SentimentData3$Obama = as.double(SentimentData3$Obama)
SentimentData3$Michigan = as.double(SentimentData3$Michigan)
SentimentData3$VoteHimOut = as.double(SentimentData3$VoteHimOut)
SentimentData3$CNN = as.double(SentimentData3$CNN)
SentimentData3$Republicans = as.double(SentimentData3$Republicans)
SentimentData3$Florida = as.double(SentimentData3$Florida)
SentimentData3$Georgia = as.double(SentimentData3$Georgia)
SentimentData3$China = as.double(SentimentData3$China)
SentimentData3$FoxNews = as.double(SentimentData3$FoxNews)
SentimentData3$Pence = as.double(SentimentData3$Pence)
SentimentData3$TrumpIsLosing = as.double(SentimentData3$TrumpIsLosing)

size = 2
dt_train <- SentimentData3
net <- dbnR::learn_dbn_struc(dt_train, size, method = "dmmhc")
f_dt_train <- fold_dt(dt_train, size)
fit <- dbnR::fit_dbn_params(net, f_dt_train, method = "mle-g")
dbnR::plot_dynamic_network(fit)
BIC(fit,f_dt_train)
AIC(fit,f_dt_train)





















