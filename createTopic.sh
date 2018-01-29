#!/bin/bash


source $(dirname $0)/config.sh


#Check argument
if [[ -z "${1}" ]]; then
    echo "Must provide the name of topic to create as first argument "
    exit 1
fi

if [[ -z "${2}" ]]; then
    echo "Must provide the number of partitions of the topic to create as second argument "
    exit 1
fi


if [[ -z "${3}" ]]; then
    echo "Must provide the replicaztion factor of the topic to create as third argument "
    exit 1
fi



$_KAFKA_BIN/kafka-topics --zookeeper $_KAFKA_ZOOKEEPER --topic $1 --create --partitions $2 --replication-factor $3
