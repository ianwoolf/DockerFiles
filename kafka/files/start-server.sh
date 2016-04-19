#!/bin/bash

service ssh restart

if [ -z ${BROKER_ID} ] ; then
  echo 'No BROKER_ID specified, please specify one between 1 and 255'
  exit -1
fi

if [ -z ${ZOO} ] ; then
  echo 'No Zookeeper connection string (ZOO) specified.'
  exit -1
fi

echo "broker.id=${BROKER_ID}"$'\n' >> /server.properties
echo "zookeeper.connect=${ZOO}"$'\n' >> /server.properties
echo "zookeeper.connect=${ZOO}"$'\n' >> /kafka/config/consumer.properties
echo "metadata.broker.list=${KAFKA}"$'\n' >> /kafka/config/producer.properties

#nohup /kafka/bin/kafka-server-start.sh /server.properties >> /kafka/logs/run.log &
bash
