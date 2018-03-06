


library(tidyverse)
G <- data.frame(
  a = sample(1:100,100,replace=T),
  b = sample(1:100,100,replace=T)

)

means <- function(df){
  mean <- rowMeans(df, na.rm=TRUE)
  return(mean)
}

means(G)
