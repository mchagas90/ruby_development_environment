FROM ruby:3.3.0-alpine

RUN apk update &&\
    apk upgrade &&\
    apk add make gcc musl-dev

RUN mkdir /app
WORKDIR /app

COPY . .
