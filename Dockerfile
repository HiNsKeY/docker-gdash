FROM ubuntu:20.04
MAINTAINER Sam Hinsley sam.hinsley@gmail.com

ARG DEBIAN_FRONTEND=noninteractive

ENV hostname=localhost
ENV TZ=Europe/London

RUN \
  apt update && \
  apt-get install -y tzdata
RUN \
  apt update && \
  apt install -y software-properties-common && \
  add-apt-repository -y ppa:gluster/glusterfs-7 && \
  apt install -y glusterfs-server
RUN \
  apt update && \
  apt install -y python3-pip && \
  pip3 install gdash

EXPOSE 8080
ENTRYPOINT gdash $hostname
