beer <- read.csv("price_collection_31.csv", header = TRUE)
library(data.table)
df_beer <- data.table(beer)
View(df_beer)

df_beer$date_collection <- as.Date(df_beer$date_collection, "%Y.%m.%d")
df_beer$district_nr <- as.factor(df_beer$district_nr)
str(df_beer)
