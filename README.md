# P1_Probstat_A_5025201104

## Identitas
| Nama                      | NRP        |
|---------------------------|------------|
| Maula Izza Azizi.         | 5025201104 |

## Soal 1
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
 - Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0.20 dari populasi menghadiri acara vaksinasi?
 ```R
    # a )
    x <- 3      # varible random yang menyatakan orang yang tidak menghadiri vaksinasi
    p <- 0.2    
    q <- 1 - p
    result <- dgeom(x, p)
 ```
 - mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 ) 
 ```R
   # b
    mean(rgeom(n = 10000, prob = p) == 3)
    mean
 ```
 - Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
  ```R
    # c
    summary(result)
    summary(mean(rgeom(n = 10000, prob = p) == 3))
  ```
 - Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
  ```R
    # d
    n = 10000
    hist(rgeom(n, prob = p), main = 'Histogram Geometrik')
  ```
 - Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Geometrik.
   ```R
    # e
    rataan <- 1/p
    varians <- (1-p)/p^2
   ```
## Soal 2
  > Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
   ```R
      # 2 maula
      n <- 20  
      p <- 0.2
   ```
   - Peluang terdapat 4 pasien yang sembuh.
    ```R
      # a
      vr <- 4 # variable random yang menyatakan jumlah pasien covid
      comb <- function(n, x) {
        factorial(n) / factorial(n-x) / factorial(x)
      }
      result <- comb (n, vr) * p^vr * (1 - p)^(n - vr)
      result
   ```
   - Gambarkan grafik histogram berdasarkan kasus tersebut.
    ```R
      # b
      hist(rbinom(vr, n, prob = p), xlab = "X", ylab = "Frekuensi",main = "Histogram Distribusi binomial")
   ```
   - Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Binomial.
    ```R
      # c
      rataan <- n * p
      varians <- n * p * (1-p)
  ```   
## soal 3
  > Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
  4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
  ```R
     lambda <- 4.5   # parameter yang menyatakan rata" kejadian sukses dalam interval waktu tertentu
     x <- 6
  ```  
 - Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
  ```R
     # a
     ppois(x, lambda = lambda, lower = FALSE)
  ```
 - simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
setahun (n = 365)
  ```R
    # b
    x <- 6
    n <- 365
    result <- dpois(1:365, lambda = lambda, log=FALSE)
    hist(result, xlab = "probabilitas", ylab = "hari", main = 'HISTOGRAM POISSON')
 ```
 - dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
 ```R
     # c
     a <- summary(ppois(x, lambda = lambda, lower = FALSE))
     a
     b <- summary(result)
     b
 ```
 - Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Poisson.
  ```R
     # d
    rataan <- varians <- lambda
 ```
 
