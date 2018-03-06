###5
library(tidyverse)
library(car)
n <- data.frame(
  a = sample(1:4,100,replace=T),
  b = sample(1:4,100,replace=T),
  c = sample(1:4,100,replace=T)
)


dumcode <- function(df){
  x1 <- mutate(df, x1 = ifelse(df[[1]] == "4", 1, 0))
  x2 <- mutate(df, x2 = ifelse(df[[2]] <= "2", 1, 0))
 x3 <- mutate(df, x3 = ifelse(df[[3]] != "4", 1, 0))
cbind(df, c(x1, x2, x3))
 }

dumcode(n)

