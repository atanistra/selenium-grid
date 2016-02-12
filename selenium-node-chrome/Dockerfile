FROM atanistra/selenium-base-node
MAINTAINER atanistra <artur.tanistra@gmail.com>

ENV BROWSER_NAME=chrome CHROMEDRIVER_VERSION=2.21 RUN_XVFB=true

RUN apk --update add xvfb dbus chromium libexif-dev mesa-gles mesa-gl mesa-dri-swrast v4l-utils-dev pango eudev-libs libcanberra-gtk3 libcanberra-gtk2 ghostscript-fonts fontsproto && \
    echo dbus-uuidgen > /etc/machine-id && \
    rm -Rf /var/cache/apk/*



