# Optimal load

loadFiles <- function(directory, numFiles) {

if(!exists(numFiles))
    numFiles <- length(fileList)
    
  fileList <- list.files(directory, full.names = TRUE)
  tmp <- vector(mode = "list", length = length(fileList))
  
  for(x in numFiles) {
    tmp[[x]] <- read.csv(fileList[[x]])
  }
  
  dataframe <- do.call(rbind, tmp)
}