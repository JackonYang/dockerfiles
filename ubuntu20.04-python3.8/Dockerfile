FROM ubuntu:20.04

MAINTAINER JackonYang <i@jackon.me>

RUN apt-get update && apt-get install -y ca-certificates && update-ca-certificates

COPY dotfiles/sources.list.20.04.aliyun /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y python python3 python3-pip python3-dev && \
    ln -s `which pip3` /usr/bin/pip

# http://stackoverflow.com/questions/23524976/capturing-output-of-python-script-run-inside-a-docker-container
ENV PYTHONUNBUFFERED=0

COPY dotfiles/pip.conf.aliyun /root/.pip/pip.conf

COPY image_info.ini /image_info.ini

WORKDIR /code
