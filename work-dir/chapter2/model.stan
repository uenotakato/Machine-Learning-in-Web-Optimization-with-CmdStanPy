data {
  int<lower=0> N;
  int<lower=0> a;
}

parameters {
  real<lower=0,upper=1> theta;
}

model {
  a ~ binomial(N, theta);
}
