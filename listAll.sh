#!/bin/bash

source $(dirname $0)/config.sh

if [ "$am_i_cool" = true ]; then

    if [ $1 ]; then

        $_KAFKA_BIN/kafka-topics --zookeeper $_KAFKA_ZOOKEEPER --list | grep $1

    else

        $_KAFKA_BIN/kafka-topics --zookeeper $_KAFKA_ZOOKEEPER --list

    fi

fi