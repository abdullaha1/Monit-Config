#!/bin/sh
var=$(sudo rabbitmqctl list_queues | grep que_service | awk '{s+=$2} END {print s}')
if [ $var -gt 15 ];
then
  exit 1
else
  exit 0
fi
