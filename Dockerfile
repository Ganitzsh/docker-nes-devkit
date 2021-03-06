FROM ubuntu:latest
MAINTAINER Julien Ganichot

ADD nesasm /usr/local/bin/nesasm
ADD cc65-nes_2.13.9.deb /debs/cc65-nes_2.13.9.deb
ADD cc65_2.13.9_amd64.deb /debs/cc65_2.13.9_amd64.deb

RUN apt-get update
RUN apt-get install make
RUN dpkg -i /debs/cc65_2.13.9_amd64.deb && apt-get install -f
RUN dpkg -i /debs/cc65-nes_2.13.9.deb && apt-get install -f
