# FROM ruby:3.3.0-alpine
# FROM alpine:3
FROM ruby:3.3.2-alpine3.20

RUN apk update &&\
    apk upgrade &&\
    apk add bash make gcc musl-dev curl gpg gpg-agent

# RVM dependences INIT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN curl -sSL https://get.rvm.io | bash -s stable --ruby
# RVM dependences END

RUN mkdir /app
WORKDIR /app

COPY . .
