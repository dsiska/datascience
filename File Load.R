# Optimal load

loadFiles <- function(directory, numFiles = 0) {

fileList <- list.files(directory, full.names = TRUE)

if(numFiles == 0)
    numFiles <- length(fileList)
  
  tmp <- vector(mode = "list", length = length(fileList))
  
  for(x in numFiles) {
    tmp[[x]] <- read.csv(fileList[[x]])
  }
  
  dataframe <<- do.call(rbind, tmp)
}