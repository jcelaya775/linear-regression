# TODO: Remove these lines
rm(list = ls())
dev.off()

set.seed(1)

# Define functions
# ======================================================================

simulate.data = function(n, mean, sd) {
  x = rnorm(n = n, mean = mean, sd = sd)
  eps = rnorm(n = n, mean = mean, sd = sd)
  
  y = -1 + 0.5*x + eps # true f
  summary(y)
  
  return(data.frame(x, y))
}

compare.models = function(x, y, legX = -2, legY = 0) {
  # X vs Y has a positive correlation
  plot(x, y, main = "Linear Regression Comparison")
  
  # Fit least squares model
  lm.fit = lm(y ~ x) # estimated f
  print("Without quadratic term")
  print(summary(lm.fit))
  print("Confidence interval:")
  print(confint(lm.fit))
  abline(lm.fit, col = "red")
  
  print("=======================================================================")
  
  # Fit using quadratic term
  lm.fit2 = lm(y ~ x + I(x^2))
  print("With quadratic term")
  print(summary(lm.fit2))
  print("Confidence interval:")
  print(confint(lm.fit2))
  abline(lm.fit2, col = "blue")
 
  legend(legX, legY, legend = c("y ~ x", "y ~ x + x^2"), lty = c(1), col = c("red", "blue"))
}

# ======================================================================

# Compare linear regression models
data = simulate.dta(n = 100, mean = 0, sd = 1)
x = data$x
y = data$y
print("Moderate noise")
compare.models(x, y, legX = -2, legY = 0.3)

# Compare models with less noise present
data = simulate.data(n = 100, mean = 0, sd = 0.5)
x = data$x
y = data$y
print("Less noise")
compare.models(x, y, -0.5, -.5)

# Compare models with more noise present
data = simulate.data(n = 100, mean = 0, sd = 2)
x = data$x
y = data$y
print("More noise")
compare.models(x, y, -5, 1)

