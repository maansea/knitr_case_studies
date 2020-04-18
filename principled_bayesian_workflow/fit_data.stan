data {
  int N;    // Number of observations
  int y[N]; // Count at each observation
}

parameters {
  real<lower=0> lambda; // Poisson intensity
}

model {
  lambda ~ normal(0, 5.82337); // Prior model
  y ~ poisson(lambda);         // Observational model
}
