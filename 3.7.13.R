set.seed(1)


x = rnorm(n = 100, mean = 0, sd = 1)
eps = rnorm(100, mean = 0, sd = 0.25)

y = -1 + 0.5*x + eps # true f
summary(y)

# X vs Y has a positive correlation
plot(x, y)

# Fit least squares model
lm.fit = lm(y ~ x) # estimated f
abline(lm.fit, col="red")
legend(x, y, legend = "test", col="red")
?legend
