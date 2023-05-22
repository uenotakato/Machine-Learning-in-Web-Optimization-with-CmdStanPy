data {
  int N; // データ数
  int<lower=0> n[N]; // 各デザイン案の表示回数
  int clicks[N]; // 各デザインのクリック数
  int img[N]; // 画像の特徴量
  int btn[N]; // ボタンの特徴量
}

parameters {
  real alpha; // ベースライン
  vector[2] beta; // 特徴量に対するパラメータベクトル
}

transformed parameters {
  real theta[N]; // ロジットリンク関数の入力
  for (i in 1:N) {
    theta[i] = inv_logit(alpha + beta[1]*img[i] + beta[2]*btn[i]);
  }
}

model {
  alpha ~ normal(0, 10); // 平均0、標準偏差10の正規分布
  for (j in 1:2) {
  beta[j] ~ normal(0, 10); // 平均0、標準偏差10の正規分布
  }
  for (i in 1:N) {
    clicks[i] ~ binomial(n[i], theta[i]);
  }
}

generated quantities {
    vector[N] log_lik;

    for (i in 1:N) {
        log_lik[i] = binomial_lpmf(clicks[i] | n[i], theta[i]); // 定数を含んだ対数尤度
    }
}
