FROM nvidia/cuda:9.0-base
ADD . /code
WORKDIR /code
#FROM nvidia/cuda
# RUN apt-get update && apt-get install python3.6
RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:jonathonf/python-3.6 && apt-get update && apt-get install -y python3.6 

#RUN mkdir -p /usr/bin
#RUN ln -s -f /usr/bin/python3.6 /usr/bin/python
# ln -s -f /usr/bin/python3
#RUN exec $SHELL

RUN apt-get update && apt-get install -y build-essential libssl-dev libffi-dev python3.6-dev python3-pip vim gosu
#curl nodejs npm gnupg vim gosu

# python3.6 をデフォルトに
RUN mkdir -p $HOME/bin
RUN ln -s -f /usr/bin/python3.6 /usr/bin/python
RUN ln -s -f /usr/bin/python3.6 /usr/bin/python3
RUN pip3 install -r /code/requirements.txt
# RUN rm -f /usr/bin/python && ln -s /usr/bin/python /usr/bin/python3
# RUN rm -f /usr/bin/python 
# RUN ln -s -f /usr/bin/python $HOME/bin/python3
# RUN mkdir -p $HOME/bin
# RUN ln -s -f /usr/bin/python3.6 $HOME/bin/python  


#COPY entrypoint.sh /usr/local/bin/entrypoint.sh
#RUN chmod +x /usr/local/bin/entrypoint.sh
#ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

WORKDIR /work

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

