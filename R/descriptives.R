df <- data.frame(
  e = sample(1:100,1000,replace=T),
  a = rnorm(1000, 500, 10),
  b = rnorm(200),
  c = rnorm(20),
  d = rnorm(1000000)
)

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
