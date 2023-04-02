data {
  int<lower=0> N_a; // アリスのデザインA案の表示数
  int<lower=0> N_b; // アリスのデザインB案の表示数
  int<lower=0> a; // アリスのデザインA案のクリック数
  int<lower=0> b; // アリスのデザインB案のクリック数
}
parameters {
  real<lower=0,upper=1> theta[2]; // デザインA案，B案のクリック率
}
model {
  a ~ binomial(N_a,theta[1]); // デザインA案のクリック数は二項分布に従う
  b ~ binomial(N_b,theta[2]); // デザインB案のクリック数は二項分布に従う
}
