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







ggplot(data=gapminder, aes(x=lifeExp, y=gdpPercap)) + geom_point()
ggplot(data=gapminder, aes(x=year, y=gdpPercap)) + geom_point()
ggplot(data=gapminder, aes(y=lifeExp, x=year, by=country, color=continent)) + geom_line() 
ggplot(data=gapminder, aes(y=lifeExp, x=year, by=country, color=continent)) + geom_line() + geom_point()
ggplot(data=gapminder, aes(y=lifeExp, x=year, by=country)) + geom_line(aes(color=continent)) + geom_point()
ggplot(data=gapminder, aes(y=lifeExp, x=year, by=country)) + geom_point(aes(color=continent)) + geom_line()
