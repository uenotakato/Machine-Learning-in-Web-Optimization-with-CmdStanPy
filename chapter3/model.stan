data {
  int<lower=0> N; // デザイン案の数
  int<lower=0> n[N]; // 各デザイン案の表示回数
  int<lower=0> clicks[N]; // 各デザイン案のクリック数
}

parameters {
  real<lower=0,upper=1> theta[N];
}

model {
  for (i in 1:N)
    clicks[i] ~ binomial(n[i],theta[i]); // 各デザイン案のクリック数は二項分布に従う
}
