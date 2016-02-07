FROM atanistra/base
MAINTAINER atanistra <artur.tanistra@gmail.com>

ENV NODE_VERSION=v5.5.0

RUN apk add --update make gcc g++ binutils-gold python linux-headers paxctl libgcc libstdc++

RUN mkdir /tmp/node && \
    cd /tmp/node && \
    wget https://nodejs.org/dist/${NODE_VERSION}/node-${NODE_VERSION}.tar.gz && \
    tar -xzf node-${NODE_VERSION}.tar.gz && \
    cd node-${NODE_VERSION} && \
    ./configure --prefix=/usr --fully-static && \
    make -j$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) && \
    make install && \
    paxctl -cm /usr/bin/node && \
    npm update && \
    rm -Rf /etc/ssl /usr/include /usr/share/man /tmp/* /root/.npm /root/.node-gyp \
    /usr/lib/node_modules/npm/man /usr/lib/node_modules/npm/doc /usr/lib/node_modules/npm/html

RUN npm install -g appium && \
    npm install wd

RUN apk del python make gcc g++ binutils-gold linux-headers paxctl libgcc libstdc++ && \
    rm -Rf /var/cache/apk/*
