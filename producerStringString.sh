#!/usr/bin/env bash

source $(dirname $0)/config.sh

#Check argument
if [[ -z "${1}" ]]; then
    echo "Must provide the name of topic to put the message in as first argument "
    exit 1
fi


kafka-console-producer --broker-list $_KAFKA_BOOTSTRAP_SERVERS \
    --key-serializer org.apache.kafka.common.serialization.StringSerializer \
    --value-serializer org.apache.kafka.common.serialization.StringSerializer \
    --topic $1