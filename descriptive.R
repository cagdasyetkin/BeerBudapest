beer <- read.csv("price_collection_31.csv", header = TRUE)
library(data.table)
df_beer <- data.table(beer)
View(df_beer)

df_beer$date_collection <- as.Date(df_beer$date_collection, "%Y.%m.%d")
df_beer$district_nr <- as.factor(df_beer$district_nr)
str(df_beer)

#mean, median, variance, stdev

df_beer$MeanCheap <- round(mean(df_beer$price_cheapest), 2)
df_beer$MeanDreher <- round(mean(df_beer$price_dreher), 2)

df_beer$StdevCheap <- round(sd(df_beer$price_cheapest), 2)
df_beer$StdevDreher <- round(sd(df_beer$price_dreher), 2)

df_beer$VarCheap <- round(var(df_beer$price_cheapest), 2)
df_beer$VarDreher <- round(var(df_beer$price_dreher), 2)

summary(df_beer)

#histograms and boxplots
library(ggplot2)

#i want to see the boxplots first

df_beer$drink <- "beer"

ggplot(df_beer, aes(drink, price_cheapest)) + geom_boxplot()
ggplot(df_beer, aes(drink, price_dreher)) + geom_boxplot()


ggplot(df_beer, aes(price_cheapest)) + geom_histogram(binwidth = 1)
ggplot(df_beer, aes(price_cheapest)) + geom_histogram(binwidth = 5)
ggplot(df_beer, aes(price_cheapest)) + geom_histogram(binwidth = 13)

ggplot(df_beer, aes(price_dreher)) + geom_histogram(binwidth = 1)
ggplot(df_beer, aes(price_dreher)) + geom_histogram(binwidth = 5)
ggplot(df_beer, aes(price_dreher)) + geom_histogram(binwidth = 13)



