FROM apriorit/docker-centos7-x64-python35-gcc
MAINTAINER Apriorit

RUN localedef -i en_US -f UTF-8 en_US.UTF-8
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 

COPY mcrypt /mcrypt
WORKDIR /mcrypt
RUN python3.5 setup.py install

