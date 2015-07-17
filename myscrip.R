# Load the data into memory

gapminder <- read.csv('gapminder-FiveYearData.csv')


populations <- gapminder$pop
bigpop <- populations > 1e8
unique(gapminder[bigpop,]$country)


# another way 
unique(gapminder$country[gapminder$pop>1e8])

#create a linear model
fit <- lm(pop~lifeExp,data=gapminder)
fit

which(square[,1] >20)

which(square[,1] >20 | square[,1] <16)
