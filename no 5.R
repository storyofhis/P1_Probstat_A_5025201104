lambda <- 3

# a
 expo <- function (lambda, x){
  if (lambda > 0) {
    return((1/lambda) * exp(x/lambda*-1))
  }
   return (0)
 }

# b
set.seed(1)
N <- 10
rexp(N, lambda)
hist(rexp(N, lambda))

N <- 100
rexp(N, lambda)
hist(rexp(N, lambda))

N <- 1000
rexp(N, lambda)
hist(rexp(N, lambda))

N <- 10000
rexp(N, lambda)
hist(rexp(N, lambda))

# c
rataan <- lambda
varians <- lambda^2
