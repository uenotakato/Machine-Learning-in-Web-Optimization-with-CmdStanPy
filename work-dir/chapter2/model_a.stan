data {
  int<lower=1> N;           // 観測されたカテゴリ数
  int<lower=1> K;           // カテゴリの数
  int<lower=0, upper=K> x[N];  // 観測されたカテゴリ
}

parameters {
  simplex[K] theta;    // ディリクレ分布のパラメータ
}

model {
  for (n in 1:N)
    x[n] ~ categorical(theta);    // カテゴリカル分布による尤度関数
}
