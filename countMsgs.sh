#!/bin/bash

source $(dirname $0)/config.sh

#Check arguments
if [[ -z "${1}" ]]; then
    echo "Must provide the name of topic to count as first argument "
    exit 1
fi

$_KAFKA_BIN/kafka-run-class kafka.tools.GetOffsetShell --broker-list $_KAFKA_BOOTSTRAP_SERVERS --topic $1  --time -1 | awk -F  ":" '{sum += $3} END {print sum}'
