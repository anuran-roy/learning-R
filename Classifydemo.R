library(plyr)
library(dplyr)

data <-
  read.csv("../Datasets/Lesson 8_Classification/Demo 1_ Support Vector Machines.csv")
count(data$Churn)
str(data)

data$Churn <- sapply(data$Churn, factor)

sample_split <- floor(0.7 * nrow(data))
set.seed(1)

training <- sample(seq_len(nrow(data)), size = sample_split)
View(training)
train_dataset <- data[training, ]
View(train_dataset)

#####################################

########## Building an SVM ##########

#####################################

library(e1071) # SVM Library
library(caret) # Classification And REgression Training library

svm_data <-
  svm(Churn ~ ., train_dataset) # Train SVM based on column "Churn" w.r.t all other columns, taking data from "train_dataset"
confusionMatrix(train_dataset$Churn, predict(svm_data), positive = '1')

# generate test data

test_dataset <- data[-training,]
View(test_dataset)

prediction <- predict(svm_data, test_dataset)
str(prediction)


confusionMatrix(test_dataset$Churn, prediction, positive = '1')
?tune

#####################################

## Building Naive Bayes Classifier ##

#####################################

install.packages("e1071", "plyr", "caret", "mlbench")

library(e1071)
library(mlbench)
library(caret)
library(plyr)

# load and verify bank data

bank_data <- read.csv("../Datasets/Lesson 8_Classification/Demo 2_ Naive Bayes Classifier.csv")

bank_data$Default <- sapply(bank_data$Default, factor)


naive_model <- naiveBayes(Default ~ ., data=bank_data)
str(naive_model)
print(naive_model)

naive_predict <- predict(naive_model, bank_data)
print(naive_predict)
naive_table <- table(naive_predict, bank_data$Default)
print(naive_table)

#########################################
# Creating a decision tree classifier

library(rpart)
library(mlbench)
library(plyr)

bank_data <- read.csv("../Datasets/Lesson 8_Classification/Demo 2_ Naive Bayes Classifier.csv")
# View(bank_data)
str(bank_data)
bank_data$Default <- sapply(bank_data$Default, factor)
bank_results <- rpart(Default ~ ., data=bank_data, method="class")
str(bank_results)
bank_results
printcp(bank_results)
plotcp(bank_results)
plot(bank_results)

###########################################
# Cross validation

library(plyr)
library(caret)

bank_data <- read.csv("../Datasets/Lesson 8_Classification/Demo 2_ Naive Bayes Classifier.csv")
bank_data$Default <- sapply(bank_data$Default, factor)

# K-fold cross validation

folds <- createFolds(bank_data, k=10, list=TRUE, returnTrain = FALSE)
folds
train_set <- names(folds[1])
bank_data[folds$train_set, ]

