# Ukuran matriks
n <- 11  # State dari 0 hingga 10

# Laju kelahiran dan kematian
lambda <- 0.0032  # Laju kelahiran
mu <- 0.0042      # Laju kematian

# Buat matriks laju transisi (Q)
rate_matrix <- matrix(0, nrow = n, ncol = n)

# Isi elemen non-diagonal dengan lambda (kelahiran) dan mu (kematian)
for (i in 1:(n - 1)) {
  rate_matrix[i, i + 1] <- lambda  # Laju kelahiran
  rate_matrix[i + 1, i] <- mu      # Laju kematian
}

# Tampilkan hasil
print("Matriks laju transisi (Rate Matrix, Q):")
print(rate_matrix)

r_i <- rowSums(rate_matrix)
r <- max(r_i)

# Matriks transisi probabilitas
P_hat <- matrix(0, nrow = nrow(rate_matrix), ncol = ncol(rate_matrix))
for (i in 1:nrow(rate_matrix)) {
  for (j in 1:ncol(rate_matrix)) {
    if (i == j) {
      P_hat[i, j] <- 1 - r_i[i] / r
    } else {
      P_hat[i, j] <- rate_matrix[i, j] / r
    }
  }
}

# Matriks transisi probabilitas P(t)
compute_transition_matrix <- function(P_hat, r, t, k_max = 100,tolerance = 1e-10) {
  n <- nrow(P_hat)
  P_t <- matrix(0, n, n)  
  P_hat_power <- diag(n)  
  factorial <- 1          
  
  for (k in 0:k_max) {
    term <- (exp(-r * t) * (r * t)^k / factorial) * P_hat_power
    P_t <- P_t + term
    
    P_hat_power <- P_hat_power %*% P_hat
    factorial <- factorial * (k + 1)
    
    # Jika elemen terbesar dari suku lebih kecil dari toleransi, berhenti
    if (max(abs(term)) < tolerance) {
      break}
  }
  
  return(P_t)
}

t <- 2  # Waktu t (2 jam)
P_t <- compute_transition_matrix(P_hat, r, t)

cat("\nMatriks P(t) untuk t =", t, ":\n")
print(P_t)
