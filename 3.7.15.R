# Predicting per capita crime rate

library(MASS)
attach(Boston)
Boston = na.omit(Boston)

names(Boston)

# lm.fit = lm(crim ~ zn)
lm.fit = lm(crim ~ zn + I(zn^2) + I(zn^3))
summary(lm.fit)
plot(zn, crim, xlab = "zn", ylab = "crime")

# lm.fit = lm(crim ~ indus)
lm.fit = lm(crim ~ indus + I(indus^2) + I(indus^3))
summary(lm.fit)
plot(indus, crim, xlab = "indus", ylab = "crime")

# lm.fit = lm(crim ~ chas)
lm.fit = lm(crim ~ chas + I(chas^2) + I(chas^3))
summary(lm.fit)
plot(chas, crim, xlab = "chas", ylab = "crime")

# lm.fit = lm(crim ~ nox)
lm.fit = lm(crim ~ nox + I(nox^2) + I(nox^3))
summary(lm.fit)
plot(nox, crim, xlab = "nox", ylab = "crime")

# lm.fit = lm(crim ~ rm)
lm.fit = lm(crim ~ rm + I(rm^2) + I(rm^3))
summary(lm.fit)
plot(rm, crim, xlab = "rm", ylab = "crime")

# lm.fit = lm(crim ~ age)
lm.fit = lm(crim ~ age + I(age^2) + I(age^3))
summary(lm.fit)
plot(age, crim, xlab = "age", ylab = "crime")

# lm.fit = lm(crim ~ dis)
lm.fit = lm(crim ~ dis + I(dis^2) + I(dis^3))
summary(lm.fit)
plot(dis, crim, xlab = "dis", ylab = "crime")

# lm.fit = lm(crim ~ rad)
lm.fit = lm(crim ~ rad + I(rad^2) + I(rad^3))
summary(lm.fit)
plot(rad, crim, xlab = "rad", ylab = "crime")

# lm.fit = lm(crim ~ tax)
lm.fit = lm(crim ~ tax + I(tax^2) + I(tax^3))
summary(lm.fit)
plot(tax, crim, xlab = "tax", ylab = "crime")

# lm.fit = lm(crim ~ ptratio)
lm.fit = lm(crim ~ ptratio + I(ptratio^2) + I(ptratio^3))
summary(lm.fit)
plot(ptratio, crim, xlab = "ptratio", ylab = "crime")

# lm.fit = lm(crim ~ black)
lm.fit = lm(crim ~ black + I(black^2) + I(black^3))
summary(lm.fit)
plot(black, crim, xlab = "black", ylab = "crime")

# lm.fit = lm(crim ~ lstat)
lm.fit = lm(crim ~ lstat + I(lstat^2) + I(lstat^3))
summary(lm.fit)
plot(lstat, crim, xlab = "lstat", ylab = "crime")

lm.fit = lm(crim ~ medv)
lm.fit = lm(crim ~ medv + I(medv^2) + I(medv^3))
summary(lm.fit)
plot(medv, crim, xlab = "medv", ylab = "crime")

# Multiple regression
lm.fit(crim ~ ., data = Boston)

x1 = c(-0.7393, 0.50978, -1.8928, 31.249, -2.684, -1.5509, 0.61791, 
       0.29742, 1.1520, -0.036280, 0.54880, -0.36316, -0.5)
y1 = rep(0, 12)

x2 = rep(0, 12)
y2 = c(0.044855, -0.063855, -0.749134, -10.313535, 0.420131, 0.001452, -0.987176,
       0.588209, -0.003780, -0.271081, -0.007538, 0.126211, -0.19887)

x = c(x1, x2)
y = c(y1, y2)

plot(x, y)
