FROM ubuntu:18.04

LABEL maintainer="arash.golgol@gmail.com"

ENV REFRESHED_AT 2020-04-06

RUN apt-get -qq update

RUN apt-get install -y \
	git \
	locales \
	python3-pip 

RUN pip3 install \
	sphinx_rtd_theme 

RUN rm -rf /var/lib/apt/lists/*

# Add support for UTF-8 when spellchecking
RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

ENV LANG en_US.utf8

