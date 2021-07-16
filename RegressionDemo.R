# Linear Regression

Class <- read.csv("../Datasets/Lesson 7_Regression Analysis/Demo 1_Perform simple linear regression.csv")
str(Class)
summary(Class)

results <- lm(formula = Weight ~ Height, Class)
results <- lm(formula = Weight ~ Height, data = Class)
results <- lm(formula = Class$Weight ~ Class$Height)

# All the above 3 mean the same

summary(results)

######################################
# Regression with multiple variables #
######################################

cars_data <- read.csv("../Datasets/Lesson 7_Regression Analysis/Demo 2_ Perform Regression Analysis with multiple variables.csv")

View(cars_data)
summary(cars_data)
str(cars_data)
cars_results <- lm(formula = MPG_City ~ Type + Origin + DriveTrain + EngineSize + Cylinders + Horsepower
                          + Weight + Wheelbase + Length, data = cars_data)
cars_results
summary(cars_results)

#######################################

boston <- read.csv("../Datasets/Boston.csv")
View(boston)
summary(boston)
str(boston)

boston_results <- lm(formula = medv ~ ., data= boston)
summary(boston_results)


