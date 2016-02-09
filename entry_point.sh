#! /bin/sh
ROOT=/usr/selenium
CONF=$ROOT/config.json

$ROOT/generate_config.sh > $CONF
echo "starting selenium hub with configuration:"
cat $CONF

java -jar /usr/selenium/selenium-server-standalone.jar -role hub -hubConfig $CONF
