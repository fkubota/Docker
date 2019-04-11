FROM nvidia/cuda:9.0-base
ADD . /code
WORKDIR /code
RUN apt-get update && apt-get install -y  build-essential libssl-dev libffi-dev python3-dev
RUN apt-get install -y  python3-pip
RUN pip3 install -r requirements.txt
RUN apt-get install  -y curl

# jupyterlab
RUN apt-get update -y && apt install -y python3-pip && pip3 install jupyterlab nodejs npm
RUN apt-get install -y gnupg
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
#RUN apt-get update -y
#RUN apt-get install -y npm
#RUN apt-get install -y nodejs
#RUN apt-get -y update && apt-get install -y npm

# node js を最新Verにする
# RUN apt-get update -y  && apt-get install -y nodejs npm
# RUN npm -y install n -g
# RUN n stable
# RUN apt purge -y nodejs npm


