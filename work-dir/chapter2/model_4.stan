data {
  int<lower=0> N;
  vector[N] xs;
  vector[N] ys;
}
parameters {
  real theta;
  real beta;
  real<lower=0, upper=1> epsilon;
}
model {
  theta ~ normal(0, 1);
  beta ~ normal(0, 1);
  epsilon ~ uniform(0, 1);
  ys ~ normal(theta + beta * xs, epsilon);
}
