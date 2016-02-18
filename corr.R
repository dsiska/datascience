# Part 3
corr <- function(directory, threshold = 0) {
  
  fileList <- list.files("specdata", full.names = TRUE)
  tmp <- vector(mode = "list", length = length(fileList))
  
  for(x in seq_along(fileList)) {
    tmp[[x]] <- read.csv(fileList[[x]])
  }
  
  files <- do.call(rbind, tmp)
  
  #reduce to just complete cases for rest of work
  obs <- files[complete.cases(files),c(2,3,4)]
  
  #count and compare to threshold per monitor
  counts <- as.data.frame(table(obs[,3]))
  
  correlation <- vector()
  
  for(x in counts[,1]) {
    
    if(counts[x,2] > 0) {
      correlation <- rbind(correlation, cor(obs[which(obs$ID == x), 1], obs[which(obs$ID == x),2]))
    }
    
  }
  correlation
}