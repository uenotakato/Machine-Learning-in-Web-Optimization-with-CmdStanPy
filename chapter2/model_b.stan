data {
  int<lower=1> N;  // 観測データの数
  int<lower=1> K;  // カテゴリの数
  int n_b[K];  // 観測されたカテゴリ
}

parameters {
  simplex[K] theta;    // ディリクレ分布のパラメータ
}

model {
  n_b ~ multinomial(theta);    // カテゴリカル分布による尤度関数
}
