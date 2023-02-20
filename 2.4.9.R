setwd("c:/repos/r/project-1")

Auto = read.csv("Auto.csv")
Auto = na.omit(Auto)

# Auto consists of 8 quant, 1 qual vars
summary(Auto)

# Range of each predictor
for (i in 1:ncol(Auto)) {
  print(range(Auto[,i]))
}

for (col in colnames(Auto[,-9])) {
  print(range(Auto[col]))
}

