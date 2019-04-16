FROM nvidia/cuda:9.0-base
ADD . /code
WORKDIR /code
RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update && apt-get install -y  python3.6 build-essential libssl-dev libffi-dev python3-dev python3-pip curl nodejs npm gnupg vim
# RUN apt-get install -y  python3-pip
# RUN pip install --upgrade pip && pip3 install -r requirements.txt
RUN pip3 install -r /code/requirements.txt
# RUN apt-get install  -y curl

# jupyterlab
RUN pip3 install jupyterlab 
# RUN apt-get install -y gnupg
# RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
#RUN apt-get update -y
#RUN apt-get install -y npm
#RUN apt-get install -y nodejs
#RUN apt-get -y update && apt-get install -y npm

# node js を最新Verにする
# RUN apt-get update -y  && apt-get install -y nodejs npm

RUN npm -y install n -g
RUN n stable
RUN apt purge -y nodejs npm


# jupyterlab extension
# extension を有効に
RUN mkdir -p /root/.jupyter/lab/user-settings/@jupyterlab/extensionmanager-extension
RUN echo '{"enabled":true}' > \
  /root/.jupyter/lab/user-settings/@jupyterlab/extensionmanager-extension/plugin.jupyterlab-settings

# 黒背景設定を追加
RUN mkdir -p /root/.jupyter/lab/user-settings/@jupyterlab/apputils-extension
RUN echo '{"theme":"JupyterLab Dark"}' > \
  /root/.jupyter/lab/user-settings/@jupyterlab/apputils-extension/themes.jupyterlab-settings

# vim extansion
RUN jupyter labextension install jupyterlab_vim
RUN mkdir -p /root/.jupyter/lab/user-settings/@jupyterlab/codemirror-extension
RUN echo '{"keyMap": "vim"}' > \
  /root/.jupyter/lab/user-settings/@jupyterlab/codemirror-extension/commands.jupyterlab-settings

# toc
RUN jupyter labextension install @jupyterlab/toc


# 文字化け対応
RUN export LANG=C.UTF-8
RUN export LANGUAGE=en_US:
