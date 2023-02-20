setwd("c:/repos/r/project-1")


library(MASS)
attach(Carseats)

# (a): Fit multiple regression model
lm.fit = lm(Sales ~ Price + Urban + US)
summary(lm.fit)