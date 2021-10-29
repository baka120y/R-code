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



