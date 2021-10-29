setwd("~/R/R-Projects/Fruits")

fruits <-c("apple", "orange", "banna")

iris <- read.csv("iris.data",header=FALSE)
names(iris) <- c("sepal_length","sepal_width","petal_lenght","petal_width","class")
View(iris)
iris[1]
iris[2]
iris["petal_width"]
iris["class"]

write.csv(iris, "iris.csv", row.names = FALSE)
