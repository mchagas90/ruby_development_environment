# FROM ruby:3.3.0-alpine
# FROM alpine:3
FROM ruby:3.3.2-alpine3.20


RUN apk update &&\
    apk upgrade &&\
    apk add make gcc musl-dev

RUN mkdir /app
WORKDIR /app

COPY . .
