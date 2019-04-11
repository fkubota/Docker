FROM nvidia/cuda:9.0-base
ADD . /code
WORKDIR /code
RUN apt-get update && apt-get install -y  build-essential libssl-dev libffi-dev python3-dev python3-pip curl nodejs npm gnupg
# RUN apt-get install -y  python3-pip
# RUN pip install --upgrade pip && pip3 install -r requirements.txt
RUN pip3 install -r -y requirements.txt
# RUN apt-get install  -y curl

# jupyterlab
RUN pip3 install jupyterlab 
# RUN apt-get install -y gnupg
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


