setwd("c:/repos/r/project-1")

read.auto.data = function() {
  Auto = read.csv("Auto.csv")
  Auto = na.omit(Auto) # ignore NA values
  Auto$horsepower = as.numeric(Auto$horsepower) # convert horsepower to numeric
  return(Auto)
}

# Extract numeric data only
Auto = read.auto.data()
Auto = subset(Auto, select = -c(name, origin))

# Correlations for each pair of variables
for (col1 in colnames(Auto)) {
  for (col2 in colnames(Auto)) {
    print(cor(Auto[col1], Auto[col2]))
  }
}

pairs(Auto)

Auto = read.auto.data()