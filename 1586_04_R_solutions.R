#Import Libraries
library(readxl)
library(dplyr)
library(readr)


sales   = read_excel("SaleData.xlsx")
imdb    = read_delim("imdb.csv",escape_backslash = T,delim = ",", escape_double = FALSE)
diamond = read_csv("diamonds.csv")

#1. Find the least amount sale that was done for each item.
#print(sales %>% group_by(Item) %>% summarise(min(Sale_amt)))

# Q2 compute total sales at each year X region
# sales$Year = as.numeric(format(sales$OrderDate,"%Y"))
# print(sales %>% group_by(Item,Region,Year)) %>% summarise(sum(Sale_amt))

# Q3 append column with no of days difference from present date to each order date
# library(lubridate)
# sales$days_diff = difftime(Sys.Date(),sales$OrderDate,units = "days")
# print(head(sales$days_diff))


# Q4 get dataframe with manager as first column and  salesman under them as lists in rows in second column.
# print(group_by(sales,Manager) %>% summarise(salesman = paste(unique(SalesMan),collapse=", ")))

# Q5 For all regions find number of salesman and number of units
# print(sales %>% group_by(Region) %>%summarise(num_of_salesMan= n_distinct(SalesMan),total_sales=sum(Sale_amt)))


# 7. Get the imdb rating for fifth movie of dataframe
# print(imdb[5,]$imdbRating)

# 8. Return titles of movies with shortest and longest run time
# print(imdb[c(which.max(imdb$duration),which.min(imdb$duration)),][,c("title","duration")])

# Q9 sort by two columns - release_date (earliest) and Imdb rating(highest to lowest)
# print(imdb[order(imdb$year,imdb$imdbRating,decreasing = T),])

# Q11 count the duplicate rows of diamonds DataFrame.
# print(sum(duplicated(diamond)))

# Q12 droping those rows where any value in a row is missing in carat and cut columns
# diamond = diamond[complete.cases(diamond[,c("cut","carat")]),]

# Q13 subset only numeric columns
# print(select_if(diamond,is.numeric))

# Q15 impute missing price values with mean
# diamond[is.na(diamond$price),"price"] = mean(diamond$price,na.rm=T)

# Q14 compute volume as (x*y*z) when depth > 60 else 8
# diamond[is.na(diamond$z),"z"] = 1
# diamond[diamond$z == "None","z"] = 1
# diamond$volume = diamond$x*diamond$y*as.numeric(diamond$z)
# diamond[diamond$depth<60, "volume"] = 8



