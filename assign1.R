library(tidyverse)
data <- c( 18, 16, 18, 24, 23, 22, 22, 23,
           26, 29, 32, 34, 34, 36, 36, 43, 42, 49, 46, 46, 57)
summary(data)
range(data)
mean(data)
median(data)
names(table(data))[table(data)==max(table(data))]
dataTibble <- tibble(x = data)
ggplot(dataTibble, aes(x = x)) +
  geom_histogram(binwidth = 1)


data2 <- c(18, 16, 18, 24, 23, 22, 22, 23, 26, 29, 32, 34, 34, 36, 36,
            43, 42, 49, 46, 46, 57)
meanData2 <- mean(data2) # calc mean for data
meanData2
ss <- sum((data2 - meanData2)^2) # calc sum of squares
ss
var <- ss/(length(data2)-1) # calc variance
var
stdDev <- sqrt(var) # calc standard deviation
stdDev
sd(data2) == stdDev # check to make sure i was right
stdErr <- stdDev/sqrt(length(data2)) # calc standard error
stdErr


mean <- 96.64
sd <- 61.67
n <- 11
# assuming normal distrubtion
er <- qnorm(0.975)*sd/sqrt(n)
er
left <- mean - er
left
right <- mean + er
right
