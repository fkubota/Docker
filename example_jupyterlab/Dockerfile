FROM python:3.6
RUN apt-get update -y && apt install -y python3-pip && pip3 install jupyterlab

# jupyterlab extension
RUN apt-get install -y gnupg
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN apt-get update && apt-get install -y npm

