FROM ubuntu:latest
MAINTAINER Julien Ganichot

ADD nesasm /usr/local/bin/nesasm

RUN echo "deb http://debian.trikaliotis.net/ stable contrib" >> /etc/apt/sources.list && \
	echo "deb-src http://debian.trikaliotis.net/ stable contrib" >> /etc/apt/sources.list

RUN apt-get update

RUN apt-get -y install gnupg

RUN gpg -a --export 2AF47E44 | apt-key add -
RUN gpg --recv-key 2AF47E44

RUN apt-get -y install cc65 cc65-nes nestopia fceux
