#!/bin/bash

##Just For Test TODO Fix it
#_KAFKA_BIN=/Users/elarib/Documents/Technos/kafka/confluent-4.0.0/bin
#_KAFKA_BOOTSTRAP_SERVERS=localhost:9200
#_KAFKA_ZOOKEEPER=localhost:2323

variableToCheck=(_KAFKA_BIN _KAFKA_BOOTSTRAP_SERVERS _KAFKA_ZOOKEEPER)

for env_var in "${variableToCheck[@]}"
do
   :
    if [ -z "${!env_var}" ]; then
        echo "You should specify ${env_var} env variable "
        exit 1
    fi
done


# TODO Use this
function checkArgument()
{
    for arg in $arg_waited
    do
        if [[ -z "${!arg}" ]]; then
            echo "Must provide the name of topic to delete as $arg argument "
            exit 1
        fi
    done

}
