library(datasets)
data(iris)
View(iris)

#install.packages("RCurl")
#library(RCurl)
#iris <- read.csv(text = getURL("https://raw.githubusercontent.com/baka120y/R-code/main/iris.csv"))


# install.packages("openssl")

#show first 4 and last four
head(iris, 4)
tail(iris, 4)

summary(iris)
summary(iris$Sepal.Length)

#check to see if there is any missing values
sum(is.na(iris))

#more summary  stuff
install.packages("skimr")
library(skimr)
skim(iris)
#group by species then skim
iris %>%
  dplyr::group_by(Species) %>%
  skim()
#data visualisation

plot(iris)
plot(iris, col = "red")
plot(iris$Petal.Length,iris$Sepal.Width)
plot(iris$Petal.Length,iris$Sepal.Width,
     xlab = "Petal Lenght", ylab = "Sepal Width")

hist(iris$Sepal.Length, xlab = "Sepal Lenght")

#feature plot
install.packages("caret")
install.packages("ggplot2")
install.packages("lattice")
library(ggplot2)
library(lattice)
library(caret)

featurePlot(x = iris[,1:4],
            y = iris$Species,
            plot = "box",
            strip = strip.custom(par.strip.text=list(cex=.7)),
            scales = list(x = list(relation="free"),
                          y =list(relation ="free")))
