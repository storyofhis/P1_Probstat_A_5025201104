# no 1 (Distribusi Geometrik)
# a
x <- 3      # varible random yang menyatakan orang yang tidak menghadiri vaksinasi
p <- 0.2    
q <- 1 - p
result <- dgeom(x, p)

# b
mean(rgeom(n = 10000, prob = p) == 3)
mean

# c
summary(result)
summary(mean(rgeom(n = 10000, prob = p) == 3))

# d
n = 10000
hist(rgeom(n, prob = p), main = 'Histogram Geometrik')

# e
rataan <- 1/p
varians <- (1-p)/p^2

