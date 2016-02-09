FROM atanistra/selenium-base-node
MAINTAINER atanistra <artur.tanistra@gmail.com>

ENV BROWSER_NAME=firefox FF_VERSION=44.0.1 RUN_XVFB=true

RUN apk --update add xvfb dbus firefox && \
    echo dbus-uuidgen > /etc/machine-id && \
    rm -Rf /var/cache/apk/*



