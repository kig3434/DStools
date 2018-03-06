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
