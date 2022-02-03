install.packages("ggplot2")
install.packages("dplyr")
install.packages("magrittr")
library(dplyr)
library(magrittr)
library(ggplot2)
View(diamonds)
head(diamonds)
summary(diamonds)
dim(diamonds)
mean(diamonds$price) # average cost of the diamonds
median(price) # median cost of the diamonds
ggplot(data = diamonds) +geom_bar(mapping = aes(x = cut)) #categorical distribution of diamonds 
diamonds%>%count(cut)
dplyr::count
ggplot(data = diamonds) + geom_histogram(mapping = aes(x = carat),binwidth = 0.1)
diamonds %>% count(cut_width(carat, 0.1))
smaller <- diamonds %>% filter(carat < 3)
ggplot(data = smaller, mapping = aes(x =carat)) + geom_histogram(binwidth = 0.1)
smaller <- diamonds %>% filter(carat < 3) 
ggplot(data =smaller, mapping = aes(x = carat)) + geom_histogram(binwidth = 0.1)
ggplot(data=diamonds) + geom_histogram(binwidth=500, aes(x=diamonds$price)) + ggtitle("Diamond Price Distribution") + xlab("Diamond Price U$") + ylab("Frequency")
