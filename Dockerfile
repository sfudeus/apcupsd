FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get -yy dist-upgrade && \
  apt-get install -yy apcupsd mailutils && \
  apt-get clean

ADD entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh"]
