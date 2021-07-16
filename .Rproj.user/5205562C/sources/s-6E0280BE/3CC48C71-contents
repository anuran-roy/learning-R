library(ggplot2)

ggplot(mtcars, aes(x="disp", y= "mpg")) #, aes(x=read)) + geom_bar()

data(iris)
# data(package = .packages(all.available = TRUE))

IrisPlot <- ggplot(iris, aes(x= Sepal.Length, y=Petal.Length, colour=Species)) + geom_density()
print(IrisPlot)

data("airquality")
OzonePlot <- ggplot(airquality, 
                    aes(x= Ozone)) + geom_histogram(aes(y=..count..), 
                 colour = "black",
                 fill = "cornflowerblue",
                 binwidth = 5) + scale_x_continuous(
                   name = "Mean ozone\n(ppb)",
                   breaks = seq(0,175, 25),
                   limits = c(0,25+max(airquality$Ozone, na.rm = TRUE))
                 )
print(OzonePlot)

ggplot(airquality,aes(x=Ozone)) + geom_density() # KD Plot
ggplot(airquality,
       aes(x=factor(airquality$Month, 
                    labels=c("May", "Jun", "Jul", "Aug", "Sep")), 
           y=Ozone)) + geom_boxplot(
  fill="gray",
  colour = "black"
) + scale_x_discrete(name = "Month") + ggtitle(
  "Boxplot of mean ozone by month"
) # Box Plot

# Save a plot as a JPEG file

jpeg("myplot.jpg")
counts <- table(mtcars$gear)
barplot(counts)
dev.off() # Returns control to console
