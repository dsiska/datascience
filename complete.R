# Part 2
# Optimal load from practice assignment

complete <- function(directory, id = 1:332) {

  fileList <- list.files(directory, full.names = TRUE)
  tmp <- vector(mode = "list", length = length(fileList))
  
  for(x in id) {
    tmp[[x]] <- read.csv(fileList[[x]])
  }

  files <- do.call(rbind, tmp)
  
  cc <- data.frame()
  
  for(x in id) {
    cc <- rbind(cc, c(x, sum(complete.cases(files[which(files$ID == x),]))))
  }
  
  names(cc)[1]<-"id"
  names(cc)[2]<-"nobs"
  
  cc
}