FROM nvidia/cuda:9.0-base
ADD . /code
WORKDIR /code
RUN apt-get update && apt-get install -y  build-essential libssl-dev libffi-dev python3-dev
RUN apt-get install -y  python3-pip
RUN pip3 install -r requirements.txt
