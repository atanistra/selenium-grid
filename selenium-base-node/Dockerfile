FROM atanistra/selenium-base
MAINTAINER atanistra <artur.tanistra@gmail.com>

ENV SCREEN_WIDTH=1920 SCREEN_HEIGHT=1080 SCREEN_DEPTH=24

COPY generate_node_config.sh /usr/selenium/generate_config.sh
COPY entry_point_node.sh /usr/selenium/entry_point.sh
RUN chmod +x /usr/selenium/generate_config.sh /usr/selenium/entry_point.sh
CMD /usr/selenium/entry_point.sh


