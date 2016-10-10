#!/bin/bash

# Set advertised.listeners option for kafka
# Required to allow remote producer and consumers
# to access kafka
if [ ! -z "$ADVERTISED_LISTENERS" ]; then
    echo "advertised listeners: $ADVERTISED_LISTENERS"
    sed -r -i "s/#?(advertised.listeners)=(.*)/\1=$ADVERTISED_LISTENERS/g" $KAFKA_HOME/config/server.properties
fi

# start supervisor
supervisord -n
