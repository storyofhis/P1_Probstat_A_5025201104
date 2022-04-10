n <- 100
m <- 50
std.deviasi <- 8

# a)  x ~ N(50, 8)
set.seed(100)
random <- rnorm(100)
rata.rata <- mean(random)
x1 <- floor(rata.rata)
x2 <- ceiling(rata.rata)

z1 <- (x1 - m) / std.deviasi
z2 <- (x2 - m) / std.deviasi
#   zscores <- c(z1,z2)
#   plot(zscores, type = "o")
rnorm(n = 100, mean = m, sd = std.deviasi)
plot(rnorm(n = 100, mean = m, sd = std.deviasi))

# b)
hist(rnorm(n = 100, mean = m, sd = std.deviasi), xlab="x", ylab="y" ,breaks = 50, main = "5025201104_Maula Izza Azizi_Probstat_A_DNhistogram")

# c)
varians <- std.deviasi ** 2
