library(ISLR)
attach(Carseats)

# Fit multiple regression model
lm.fit = lm(Sales ~ Price + Urban + US)
summary(lm.fit)

lm.fit = lm(Sales ~ Price + US)
summary(lm.fit)
confint(lm.fit, level = 0.95)

as.data.frame(hatvalues(lm.fit))

hist(Price)
hist(US)
hist(lm.fit$fitted.values)
lm.fit
