#! /bin/sh
ROOT=/usr/selenium
CONF=$ROOT/config.json

$ROOT/generate_config.sh > $CONF
echo "starting selenium node with configuration:"
cat $CONF

if [ $RUN_XVFB == true ]
then
   echo "Starting XVFB"
   export DISPLAY=:98   	
   Xvfb :98 -screen 0 ${SCREEN_WIDTH}x${SCREEN_HEIGHT}x${SCREEN_DEPTH} -ac +extension RANDR &
fi
   java -jar /usr/selenium/selenium-server-standalone.jar -role node -nodeConfig $CONF -hub http://$HUB_PORT_4444_TCP_ADDR:$HUB_PORT_4444_TCP_PORT/grid/register   

