calcMeanlifeExp<-function(data,year=NULL,country=NULL){
  if(!is.null(year)){
    data<-data[data$year %in% year,]
  }
  if(!is.null(country)){
    data<-data[data$country %in% country,]
  }
  lifeExp<-mean(data$lifeExp)
  return(lifeExp)
  
}
