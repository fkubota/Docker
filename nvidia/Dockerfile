#FROM nvidia/cuda:9.0-base
FROM nvidia/cuda
# RUN apt-get update && apt-get install python3.6
RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:jonathonf/python-3.6 && apt-get update && apt-get install -y python3.6 


# python3.6 をデフォルトに
# RUN rm -f /usr/bin/python && ln -s /usr/bin/python /usr/bin/python3
# RUN rm -f /usr/bin/python 
# RUN ln -s -f /usr/bin/python $HOME/bin/python3
# RUN mkdir -p $HOME/bin
# RUN ln -s -f /usr/bin/python3.6 $HOME/bin/python  


