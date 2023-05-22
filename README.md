# Machine-Learning-in-Web-Optimization-with-CmdStanPy

飯塚修平 著『ウェブ最適化ではじめる機械学習』(オライリー・ジャパン発行、 ISBN978-4-87311-916-8)の[サンプルコード](https://www.oreilly.co.jp/books/9784873119168/)のPyMC3で書かれた部分をCmdStanPyで実装しました。

# はじめ方
dockerをインストールし，本リポジトリに移動した後以下のコマンドを実行してください。
```
docker compose up
```
ターミナルの出力の後半にあるリンクを開くとJupyterLabに飛ぶことができます。

dockerをインストールせずに利用したい場合は，以下のコマンドを実行してください。（pythonのバージョンは`3.11.0`を使用してください。）
```
poetry install
install_cmdstan
```
