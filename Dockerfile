FROM ubuntu:20.04

RUN mkdir /accServer && apt update && dpkg --add-architecture i386 && apt-get update && apt install -y wine-development wine32-development
VOLUME /accServer

WORKDIR /accServer

ENTRYPOINT wine --version