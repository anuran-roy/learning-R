# age<-20;
# 
# print("To check if applicant is eligible to vote:")
# if(age >= 18){
#   print("Major")
# }else{
#   print("Minor")
# }
# 
# 
# v <- 1:10;
# 
# for(val in v){
#   print(val)
# }
# 
# i <- 1;
# while (i < 6){
#   print(i)
#   i <-  i+1
# }
# 
# x <- 1;
# 
# repeat{
#   print(x)
#   x <- x+1
#   if(x==6){
#     break
#   }
# }
# 
# foo <- t(matrix(1:16, nrow = 4, ncol = 4))
# print(foo)
# 
# foo2 <- array(1:24, dim=c(3,4,2))
# print(foo2)
# v1 <- 1:18
# # v2 <- 1:12
# foo2 <- array(v1, dim=c(3,3,2), dimnames = list(c("ROW1", "ROW2", "ROW3"), c("COL1", "COL2", "COL3"), c("MATRIX1", "MATRIX2")))
# print(foo2)
# 
# foo3 <- factor(c("male", "female", "male", "female"))
# print(foo3)

Name <-  c("A", "B", "C") 
Sex <- c("M", "M", "F")
Age <- c(17, 18, 19)
df <- data.frame(Name, Sex, Age, stringsAsFactors = TRUE)

print(df)
print(df$Name)
print(df["Age"])
print(df[1,])

df2 <- read.csv("./LanguageTrendscopy.csv", stringsAsFactors = FALSE)
# print
View(df2) # View dataframe in new window
str(df2) # View dataframe details

# # Using gdata

# library(gdata)
# help(read.xls)
# mydata <- read.xls("File.xls") # Read from First sheet


# # Using XLConnect

# library(gdata)
# help(read.xls)
# wk <- loadWorkbook("file.xls")
# mydata <- readWorksheet(wk, sheet="Sheet1) # Read from First sheet

# # Read Minitab Portable Worksheets

# library(foreign)
# help(read.mtp)
# mydata <- read.mtp("file.mtp")

# # Read Text File datatables

# help(read.table)
# mydata = read.table("file.txt")

# # Read CSV files

# help(read.csv)
# mydata = read.csv("file.csv", sep=",")

# # Writing data to files

# # Export to text files
# 
# help(write.table)
# write.table(mydata, "./file.txt", sep="\t")

# # Export to Excel files

# library(xlsx)
# help(write.xlsx)
# write.xlsx(mydata, "./file.xlsx")

# # Export to CSV files

# help(write.csv)
# write.xlsx(mydata, "./file.csv")


