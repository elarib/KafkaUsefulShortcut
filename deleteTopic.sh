#!/bin/bash


source $(dirname $0)/config.sh


#Check argument
if [[ -z "${1}" ]]; then
    echo "Must provide the name of topic to delete as first argument "
    exit 1
fi


$_KAFKA_BIN/kafka-topics --zookeeper $_KAFKA_ZOOKEEPER --topic $1 --delete
