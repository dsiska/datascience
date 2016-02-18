## Part 1
pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  monitors <- list.files(directory, full.names = TRUE)
  i <- 0
  dat <- data.frame()
  
    for(i in id) {
      dat <- rbind(dat, read.csv(monitors[i]))
      i = i+1
    }
  
   if (pollutant == "sulfate") {
      dat <- dat[,2]
      ans <- mean(dat, na.rm = TRUE)
    }
    if (pollutant == "nitrate") {
      dat <- dat[, 3]
      ans<- mean(dat, na.rm = TRUE)
    }
  ans
}