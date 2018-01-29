#!/bin/bash

source $(dirname $0)/config.sh

if [ $1 ]; then

    $_KAFKA_BIN/kafka-topics --zookeeper $_KAFKA_ZOOKEEPER --list | grep $1

else

    $_KAFKA_BIN/kafka-topics --zookeeper $_KAFKA_ZOOKEEPER --list

fi