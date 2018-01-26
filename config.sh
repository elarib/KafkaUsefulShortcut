#!/bin/bash

##Just For Test TODO Fix it
#_KAFKA_BIN=/Users/elarib/Documents/Technos/kafka/confluent-4.0.0/bin
#_KAFKA_BOOTSTRAP_SERVERS=localhost:9200
#_KAFKA_ZOOKEEPER=localhost:2323

variableToCheck=(_KAFKA_BIN _KAFKA_BOOTSTRAP_SERVERS _KAFKA_ZOOKEEPER)

am_i_cool=true

for env_var in "${variableToCheck[@]}"
do
   :
    if [ -z "${!env_var}" ]; then
        echo "You should specify ${env_var} env variable "
        am_i_cool=false
    fi
done

