FROM alpine:3.3
MAINTAINER atanistra <artur.tanistra@gmail.com>

RUN apk add --update wget openjdk8-jre ca-certificates && rm -Rf /var/cache/apk/*
RUN mkdir -p /usr/selenium \
    && wget --no-verbose http://selenium-release.storage.googleapis.com/2.50/selenium-server-standalone-2.50.1.jar -O /usr/selenium/selenium-server-standalone.jar



