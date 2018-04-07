FROM node
MAINTAINER Ronit Ramdam BK

RUN apt-get update # required to install zip
    && apt-get install -y zip # required for packaging up the application

     
