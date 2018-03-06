basiccraps <- function(x, y) {
  d1 <- sample(1:6, 1)
  d2 <-sample(1:6, 1)
  print('Playing Craps when the point is On')
  print(paste("Dice number one,", d1), quote = FALSE)
  print(paste("Dice number two,", d2), quote = FALSE)
  Sum <- sum(d1, d2)
  print(paste("Total", Sum), quote = FALSE)
  if(Sum =='7'){
    print('CRAPS, Pass the dice')
  }
  else if(d1 == d2){
    sprintf("%i The Hard Way, roll again", Sum)
  }
  else {
    print("Roll again")
  }

}

basiccraps(roll)
