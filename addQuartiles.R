# A method for binning a numerical variable in a categorical variable. 
myDataClean$quartileGrowth <- with(myDataClean, 
                             factor(findInterval(myDataClean$SP.RUR.TOTL.ZG, 
                                                 c(-Inf, 
                                                   quantile(myDataClean$SP.RUR.TOTL.ZG, probs=c(0.25, .5, .75)), 
                                                   Inf)
                                                 ),
                                    labels=c("Very low","Low","High","Very High"))
                             )

