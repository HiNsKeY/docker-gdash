FROM ubuntu:20.04
MAINTAINER Sam Hinsley sam.hinsley@gmail.com
ENV hostname=localhost
VOLUME /var/lib/glusterd

RUN \
  apt install -y python3-pip && \
  pip3 install gdash

EXPOSE 8080
ENTRYPOINT gdash $hostname
