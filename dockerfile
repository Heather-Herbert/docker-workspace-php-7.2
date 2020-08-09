FROM ubuntu:20.04

LABEL maintainer="heather.herbert.1975@gmail.com"

ENV REFRESHED_AT 2020-08-09
ENV PUBLIC_ROOT html
ENV SERVER_NAME localhost


RUN apt -y update
RUN apt -y install php-cli unzip curl

RUN cd ~
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php

RUN HASH=`curl -sS https://composer.github.io/installer.sig`
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer

RUN apt -y update
RUN apt -y install nodejs npm

