data {
  int<lower=0> N;
  int<lower=0> obs[N];
}

parameters {
  real<lower=0> theta;
}

model {
  for (n in 1:N)
    obs[n] ~ exponential(1/theta);
}
