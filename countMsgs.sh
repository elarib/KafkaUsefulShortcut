#!/bin/bash

source $(dirname $0)/config.sh

if [ "$am_i_cool" = true ]; then

    $_KAFKA_BIN/kafka-run-class kafka.tools.GetOffsetShell --broker-list $_KAFKA_BOOTSTRAP_SERVERS --topic $1  --time -1 | awk -F  ":" '{sum += $3} END {print sum}'

fi

