# FROM nvidia/cuda:9.0-base
FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04

ADD . /code
WORKDIR /code
RUN apt-get update && apt-get install -y software-properties-common 
RUN add-apt-repository ppa:jonathonf/python-3.6 && apt-get update && apt-get install -y python3.6
RUN apt-get update && apt-get install -y build-essential libssl-dev libffi-dev python3.6-dev python3-pip curl nodejs npm gnupg vim gosu ffmpeg sudo htop screen git tmux bat

# python3.6 をデフォルトに
RUN mkdir -p $HOME/bin
RUN ln -s -f /usr/bin/python3.6 /usr/bin/python
RUN ln -s -f /usr/bin/python3.6 /usr/bin/python3
RUN pip3 install --upgrade pip
RUN pip3 install -r /code/requirements.txt


# デフォルト作業ディレクトリ
WORKDIR /work

# -------------------------------
# jupyterlab
#RUN pip3 install jupyterlab==0.35.6
RUN pip3 install jupyterlab

# node js を最新Verにする
RUN npm -y install n -g
RUN n stable
RUN apt purge -y nodejs npm

# jupyterlab extension
## vim extansion
RUN jupyter labextension install jupyterlab_vim
## toc
RUN jupyter labextension install @jupyterlab/toc
## matplotlib
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN jupyter labextension install jupyter-matplotlib
# plotly
RUN jupyter labextension install @jupyterlab/plotly-extension
# draw.io
RUN jupyter labextension install jupyterlab-drawio

# 文字化け対応
ENV LANG=C.UTF-8
ENV LANGUAGE=en_US:


# id 関係
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

