FROM ubuntu:latest

RUN apt-get -y update

WORKDIR /app

COPY . .
