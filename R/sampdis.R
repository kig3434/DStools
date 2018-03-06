
SamplingDist <- function(samples = 50, sample_size = 100, mean = 0, sd = 1){
  if(samples <= 0){
    stop("The number of samples needs to be greater than 0")
  }
  if(sd <= 0){
    stop("The standard devaition cannot be 0")
  }

  sampleMeans <- rep(NA, samples)
  for(i in 1:samples){
    x <- rnorm(sample_size, mean = mean, sd = sd)
    sampleMeans[i] = mean(x)
  }
  return(sampleMeans)
}

SamplingDist(51)
