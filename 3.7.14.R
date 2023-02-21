dev.off()
rm(list = ls())

set.seed(1)

x1 = runif(100)
x2 = 0.5*x1 + rnorm(100)/10
y = 2 + 2*x1 + 0.3*x2 + rnorm(100)

?abline
x1=c(x1, 0.1)
x2=c(x2, 0.8)
y=c(y,6)

summary(x1)
summary(x2)
summary(y)
?summary
# Scatter plot between predictors
plot(x1, x2)

# Least squares regression fit
plot(x1 + x2, y)

# Using x1 and x2
lm.fit = lm(y ~ x1 + x2)
abline(lm.fit, col = "red", lty = 2)
# legend(0, 6, legend = c("y ~ x1 + x2"), lty = c(3), col = c("red"))

# Using only x1
lm.fit2 = lm(y ~ x1)
summary(lm.fit2)
abline(lm.fit2, col = "blue", lty = 2)
# legend(0, 6, legend = c("y ~ x1"), lty = c(3), col = c("blue"))

# Using only x2
lm.fit3 = lm(y ~ x2)
summary(lm.fit3)
abline(lm.fit3, col = "purple", lty = 2)
# legend(0, 6, legend = c("y ~ x1"), lty = c(3), col = c("purple"))
