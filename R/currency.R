##3
USdollar_to_euro <- function(m) {
  Euro <- m*.81
  if(Euro > 0){
    print(Euro)
    print("exchange rate as of 2/26/2018")
  }
  else if(Euro <= 0) {
    print("You have no money")
  }
}

USdollar_to_euro(1)
