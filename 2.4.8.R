setwd("c:/repos/r/project-1")

# Load data set
college = read.csv("College.csv")
fix(college)

# Identify first row in file as row names
rownames(college) = college[,1]
fix(college)

# Ignore first column
college <- college[,-1]
fix(college)
  
# Get relationships between variables
college$Private = as.factor(college$Private)
summary(college)
pairs(college[,1:10])
plot(college$Private, college$Outstate, xlab = "Private", ylab = "Out-of-state Tuition")

# Create new Elite column
Elite = rep("No", nrow(college))
Elite[college$Top10perc > 50] = "Yes"
Elite = as.factor(Elite)
college = data.frame(college, Elite)

# Plot data/relationships
summary(college)
plot(college$Elite, college$Outstate, xlab = "Elite", ylab = "Out-of-state Tuition")

par(mfrow=c(2,2))
hist(college$Apps, xlab = "Applications", main = "Applications")
hist(college$Accept, xlab = "Accepted", main = "Accepted")
hist(college$Outstate, xlab = "Outstate Tuition", main = "Outstate")
hist(college$Enroll, xlab = "Enroll", main = "Enroll")
