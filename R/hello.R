# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#####good read
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

#Hw 6. Function and packages
#practice changess

library(tidyverse)
library(ggthemes)

#3. Create and document a function that generates a density plot for a specific variable in a data.frame


df <- data.frame(
  a = rnorm(1000, 500, 10),
  b = rnorm(200),
  c = rnorm(20),
  d = rnorm(1000000)
)

d <- function(y) {
  den <- hist(y)
  avg <- mean(y)
  sd <- sd(y)
  bplot <- boxplot(y, horizontal = TRUE)
  rng <- range(y)
  print(avg)
  print(sd)
  print(rng)
}

d(df$a)


#4. Create and document a new customer ggplot theme function (Hint: Look at an existing theme and modify it)


mpg

theme_tt <- function () {
  theme_dark(base_size=10, base_family="sans") %+replace%
    theme(
      panel.background  = element_blank(),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(colour = "black", size=0.5),
      axis.text.x = element_text(angle=50, size=10, vjust=0.5),
      axis.text.y = element_text(angle=50, size=10, vjust=0.5),
      axis.title.x = element_text(color="forestgreen", vjust=-0.35),
      axis.title.y = element_text(color="darksalmon" , vjust=0.35)
    )
}

ggplot(mpg, aes(x = hwy, y = cty, color = class)) +
  geom_point() +
  geom_smooth(method= 'loess', span = 1, se = FALSE, color = 'red') +
  xlab("Highway Miles") +
  ylab("City Miles") +
  theme_tt()





#4. Create a function that provides the top n number of a grouped variable by counts (Hint: use dplyr and for the group by use this line of code so you can pass in a character vector "groupings" for the group by)
#group_by_at(vars(one_of(groupings)))


top10(mpg, model)

top10 <- function(df, var) {
  df %>%
    group_by_(var) %>%
    summarise(count = n()) %>%
    arrange(desc(count)) %>%
    head(10)

}
top10(mpg, "manufacturer")







#5. Create 4 other general functions (you can use the ones from lecture and/or #create your own)
#Function ideas
#Power analysis
#Bootstrap
#Other functions that use dplyr code or ggplot2

##1
library(e1071)
descriptives <- function(p) {
  m <- mean(p)
  s <- sd(p)
  rng <- range(p)
  med <- median(p)
  skew <-skewness(p)
  Min <- min(p)
  Max <- max(p)
  tibble(c(m,s, rng, med, skew, Min, Max))

}
descriptives(df$a)

##2
tt_cor <- function(x, y){
  tt <- t.test(x,y)
  c <-cor(x,y)
  print(c(tt, c))
}
tt_cor(mpg$year, mpg$hwy)


##3
USdollar_to_euro <- function(m) {
  Euro <- m*.81
  print(Euro)
  print("exchange rate as of 2/26/2018")
}

USdollar_to_euro(5)



##4
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

#6. Commit and push your code to Github

