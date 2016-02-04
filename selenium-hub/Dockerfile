FROM atanistra/selenium-base
MAINTAINER atanistra <artur.tanistra@gmail.com>

ENV GRID_NEW_SESSION_WAIT_TIMEOUT -1
ENV GRID_JETTY_MAX_THREADS -1
ENV GRID_NODE_POLLING  5000
ENV GRID_CLEAN_UP_CYCLE 5000
ENV GRID_TIMEOUT 30000
ENV GRID_BROWSER_TIMEOUT 0
ENV GRID_MAX_SESSION 5
ENV GRID_UNREGISTER_IF_STILL_DOWN_AFTER 30000

COPY generate_hub_config.sh /usr/selenium/generate_config.sh
COPY entry_point.sh /usr/selenium/entry_point.sh
RUN chmod +x /usr/selenium/generate_config.sh /usr/selenium/entry_point.sh
CMD /usr/selenium/entry_point.sh


