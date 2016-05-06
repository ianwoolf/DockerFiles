FROM hadoop:base
MAINTAINER ianwoolf <btw515wolf2@gmail.com>
ADD files/kafka_2.10-0.9.0.0 /kafka

ADD files/start-server.sh /
RUN chmod +x /start-server.sh
ADD files/server.properties.initial /server.properties
ADD files/producer.properties /kafka/config/
ADD files/consumer.properties /kafka/config/

EXPOSE 22 9092
CMD "/start-server.sh"; "bash"
