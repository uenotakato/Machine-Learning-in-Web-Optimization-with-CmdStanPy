data {
  int<lower=0> N; // アリスのデザインA案の表示数
  int<lower=0> a; // アリスのデザインA案のクリック数
}
parameters {
  real<lower=0,upper=1> theta; // デザインA案のクリック率
}
model {
  a ~ binomial(N,theta); // デザインA案のクリック数は二項分布に従う
}
