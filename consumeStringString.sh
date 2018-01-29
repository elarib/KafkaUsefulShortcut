#!/usr/bin/env bash

source $(dirname $0)/config.sh


#Check argument
if [[ -z "${1}" ]]; then
    echo "Must provide the name of topic to read the message from as first argument "
    exit 1
fi


# TODO add max-meesages
#if [[ -z "${2}" ]]; then
#    max_message="--max-messages 1"
#
#else
#    max_message="--max-messages $2"
#fi


kafka-console-consumer --bootstrap-server $_KAFKA_BOOTSTRAP_SERVERS \
    --key-deserializer org.apache.kafka.common.serialization.StringDeserializer \
    --value-deserializer org.apache.kafka.common.serialization.StringDeserializer \
    --topic $1 \
    --from-beginning