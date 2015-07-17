# Takes a dataset and multiplies the population column
# with the GDP per capita column.
calcGDP <- function(data, year=NULL, country=NULL) {
  if(!is.null(year)) {
    data <- data[data$year %in% year, ]
  }
  if (!is.null(country)) {
    data <- data[data$country %in% country,]
  }
  gdp <- data$pop * data$gdpPercap
  
  new <- cbind(data, gdp=gdp)
  return(new)
}
