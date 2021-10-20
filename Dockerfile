FROM debian:buster-slim

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get -yy dist-upgrade && \
  apt-get install -yy apcupsd && \
  apt-get clean

ADD entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh"]
