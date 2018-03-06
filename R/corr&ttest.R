mpg

tt_cor <- function(x, y){
  tt <- t.test(x,y)
  c <-cor(x,y)
  print(c(tt, c))
}
tt_cor(mpg$year, mpg$hwy)
