FROM ubuntu:16.04
MAINTAINER Michele Dolfi <dolfim@phys.ethz.ch>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update \
    && apt-get -yq install build-essential libboost-all-dev \
                           python-scipy liblapack-dev python-dev \
    && rm -rf /var/lib/apt/lists/*


COPY ./src /src

ENV PREFIX=/usr
ENV PYTHON=/usr/bin/python


RUN cd /src  \
  && make

