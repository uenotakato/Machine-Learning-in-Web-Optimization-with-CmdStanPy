ARG python_image_v="python:3.11.0-buster"
# python3.11.0のイメージをダウンロード
FROM ${python_image_v}

COPY poetry.lock pyproject.toml ./

# JupyterLab関連のパッケージ（いくつかの拡張機能を含む）
# 必要に応じて、JupyterLabの拡張機能などを追加してください
RUN python3 -m pip install --upgrade pip \
&&  pip install --no-cache-dir \
    black \
    jupyterlab \
    jupyterlab_code_formatter \
    jupyterlab-git \
    lckr-jupyterlab-variableinspector \
    jupyterlab_widgets \
    ipywidgets \
    import-ipynb

# poetryのインストール先の指定
ENV POETRY_HOME=/opt/poetry
# poetryインストール
RUN curl -sSL https://install.python-poetry.org | python3 - && \
# シンボリックによるpathへのpoetryコマンドの追加
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
# 仮想環境を作成しない設定(コンテナ前提のため，仮想環境を作らない)
    poetry config virtualenvs.create false && \
    poetry install && \
    install_cmdstan
