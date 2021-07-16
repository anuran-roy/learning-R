# # We manipulate data in R using the various apply() functions

# m <- matrix(c(1,2,3,4),2,2)
# print(m)
# print(apply(m, 1, sum)) # 1 means roww sums, 2 means column sums.
# print(apply(m, 2, sum))
# 
# l <- list(a=c(1,1), b=c(2,2), c=c(3,3))
# print(l)
# print(lapply(l,sum))
# print(lapply(l, mean))
# print(sapply(l, mean))

########################################################

################ Working with dplyr ####################

########################################################

library(dplyr)
data("mtcars")

str(mtcars)

# 1. Selection commands (select keyword)

# print(select(mtcars, mpg:carb))
# print(select(mtcars, matches(".t.")))
# 
# data("iris")
# print(select(iris, contains("etal")))
# print(select(iris, starts_with("P")))

# # 2. Filters (filter keyword)
# 
# print(filter(mtcars, cyl == 8))
# print(filter(mtcars, cyl == 8, carb < 4))
# print(filter(mtcars, cyl == 8 && carb < 4))
# print(filter(mtcars, cyl == 8 | carb < 4))
# 
# # 3. Arrange functions (arrange keyword)
# 
# arrange(mtcars, desc(disp))
# arrange(mtcars, cyl, disp)
#  
# # 4. Add new variables to existing data set (mutate keyword)
# 
# mutate(mtcars, my_custom_disp = disp/1.0237)
# 
# # 5. Summarize datasets (summarise keyword)
# 
# summarise(group_by(mtcars, cyl), mean(disp))
# summarise(group_by(mtcars, cyl), m = mean(disp), sd = sd(disp))
# 
# v <- c(1,2,3,4,5)
# first(v)
# last(v)
# first(m)
# last(m)
# nth(v, 2)

#############################################

####### Data Manipulation with plyr #########

#############################################

library(plyr)
BankCustomer = read.csv("../Datasets/Lesson 3_Data Structures/Demo 2_ Assigning values and applying functions.csv")
str(BankCustomer)
BankCustomer <- rename(BankCustomer, c("prev" = "previous"))
str(BankCustomer)

max(BankCustomer["age"])
filter(BankCustomer, marital == "married")

# Categorizing BankCustomer according to a new variable "Generation" using transform()

BankCustomerAgeCategorized <- transform(BankCustomer, Generation = ifelse(age < 22, "Z", ifelse(age < 41, "Y", ifelse(age < 53, "X", "Baby Boomers"))))
str(BankCustomerAgeCategorized)
View(BankCustomerAgeCategorized)

# 2 way frequency tables

table(BankCustomerAgeCategorized$Generation, BankCustomerAgeCategorized$"poutcome")

cts <- table(mtcars$gear)
cts

########################################################

################# Charts/plots in R ####################

########################################################

# 1.1 Simple Bar chart

barplot(cts)
barplot(cts, horiz = TRUE)

# 1.2 Decorating a simple barplot

barplot(cts,
        main = "Simple bar chart",
        xlab = "Improvement",
        ylab = "Frequency",
        legend = rownames(cts),
        col = c("red", "green", "yellow")
        )

# 1.3 Stacked barplots

counts <- table(mtcars$vs, mtcars$gear)
barplot(counts,
        main = "Car distribution by Gear and VS",
        xlab = "# Gears",
        col=c("grey", "cornflowerblue"),
        legend = rownames(counts)
        ,beside = TRUE
        )

# 2.1 Pie chart

slices <- c(10, 12, 4, 16, 8)
labels <- c("US", "UK", "Australia", "Germany", "France")
pie(slices, labels = labels, main="Simple Pie chart")

# 2.2 Pie chart with percentages and vibrant colours

slices <- c(10, 12, 4, 16, 8)
pct <- round(slices/sum(slices)*100)
labels <- paste(c("US", "UK", "Australia", "Germany", "France"), " ", pct, "%", sep="")
pie(slices, labels = labels, col = rainbow(length(slices)), main="Pie chart with percentages")

# 2.3 3D Pie Charts (using plotrix)

library(plotrix)

slices <- c(10, 12, 4, 16, 8)
pct <- round(slices/sum(slices)*100)
labels <- paste(c("US", "UK", "Australia", "Germany", "France"), " ", pct, "%", sep="")
pie3D(slices, labels = labels, explode = 0.03, main="3D Pie chart with percentages")

# 3. Histograms

hist(mtcars$mpg, main = "Plot of miles per gallon", col = "grey", xlab = "Miles per gallon") # , breaks = 8) # breaks controls the number of bins (ie, range categories in the histogram)

# 4.1 Kernel density plots (better than histograms to visulize shape of data)

density_data <- density(mtcars$mpg)
plot(density_data)

# 4.2 Coloured Kernel Density Plots

density_data <- density(mtcars$mpg)
plot(density_data, main="KD of Miles per gallon")
polygon(density_data, col = "cornflowerblue")

# 5. Line charts

weight <- c(2.5,2.8,3.2,4.8,5.1,5.9,6.8,7.1,7.8,8.1)
months <- 0:9
plot(months, weight, type = "b", col = "red", main="Baby Weight chart")

# 6. Box plots

data("airquality")
boxplot(airquality$Ozone,
        main = "Mean ozone in ppb in Roosevelt island",
        xlab = "Parts per Billion (ppb)",
        ylab = "Ozone"
        # , col = "grey" # For setting box color
        # , horizontal = TRUE # For plotting horizontally 
        )

# 7. Heatmaps

m <- matrix(1:81,9,9)
heatmap(m) # [sample.int(nrow(m)),])

# 8. Word Clouds

library(wordcloud)

data <- read.csv("../unigram_freq.csv", header = TRUE)
head(data)
wordcloud(words = data$word, 
          freq=data$count, 
          max.freq = 1000000000, 
          max.words = 500,
          random.order = FALSE,
          rot.per = 0.35,
          colors = brewer.pal(8, "Dark2")
          )