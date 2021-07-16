####################################
# Demo 1
data <- read.csv("../Datasets/Additional Datasets/Clustering  Ex 1.csv")
View(data)

library(cluster)
food_data <- read.csv("../Datasets/Lesson 9_Clustering/Demo 2_ Perform hierarchical clustering.csv")
food_agg <- agnes(food_data, diss=FALSE, metric="euclidean")
plot(food_agg)

#####################################
# Demo K-Means clustering

customer_data <- read.csv("../Datasets/Lesson 3_Data Structures/Demo 1_ Identifying Data Structures.csv")
# customer_data$Default <- sapply(bank_data$Default, factor)

set.seed(111)
# View(customer_data)
str(customer_data)

cluster_up <- kmeans(customer_data, 3, iter.max   = 10)

del_vars <- names(customer_data) %in% c("job","marital","education","default","housing","loan","contact","month","poutcome")
customer_data_num <- customer_data[!del_vars]
customer_data_num <- na.omit(customer_data_num)
customer_data_num <- scale(customer_data_num)
View(customer_data_num)

# K Means clustering

cluster_up <- kmeans(customer_data_num, 3, iter.max   = 10)
str(cluster_up)
customer_data_num <- cbind(customer_data_num, ClusterNum = cluster_up$cluster)

# Graph and count of expected clusters

library(mclust)
fit <- Mclust(customer_data_num)
plot(fit)

# Hierarchical Clustering

customer_data <- read.csv("../Datasets/Lesson 3_Data Structures/Demo 1_ Identifying Data Structures.csv")
View(customer_data)
str(customer_data)

customer_data <- na.omit(customer_data)

cluster_h <- dist(customer_data, method = "euclidean")
fit <- hclust(cluster_h, method="ward.D")
groups <- cutree(fit, k = 3)
groups
customer_data <- cbind(customer_data, ClusterNum = groups)
plot(fit)
