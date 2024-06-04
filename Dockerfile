# FROM ruby:3.3.0-alpine
FROM ruby:3.3.2-bookworm
# FROM alpine:3
FROM --platform=linux/amd64 ruby:3.3.2-alpine3.20

RUN apt-get update && apt-get upgrade 
# &&\
#     apt-get install make gcc musl-dev curl
# RUN apt-get install gpg gpg-agent

# RVM dependences INIT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
# RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN \curl -sSL https://get.rvm.io | bash -s stable

RUN usermod -a -G rvm `whoami`
RUN echo '[[ -s /usr/local/rvm/scripts/rvm ]] && source /usr/local/rvm/scripts/rvm' >> $HOME/.bashrc
RUN source $HOME/.bashrc
# RVM dependences END

RUN mkdir /app
WORKDIR /app

COPY . .
