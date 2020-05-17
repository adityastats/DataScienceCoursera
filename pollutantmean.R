pollutantmean <- function(directory,pollutant,id=1:332){
  files <- list.files(directory,full.names = TRUE)
  data <- data.frame()
  for (i in id){
    x <- read.csv(files[i])
    data <- rbind(data,x)
  }
  mean(data[["sulfate"]],na.rm = TRUE)
}