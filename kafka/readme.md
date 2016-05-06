# build

    docker build -t kafka:zzz .

# 启动kafka集群(todo: 命令启动)
    docker run -idt -P --name kafka1 -h kafka1 -e BROKER_ID=1 -e ZOO=zk1:2181,zk2:2181,zk3:2181 -e KAFKA=kafka1:9002,kafka2:9002,kafka3:9002 kafka:zzz
    docker run -idt -P --name kafka2 -h kafka2 -e BROKER_ID=2 -e ZOO=zk1:2181,zk2:2181,zk3:2181 -e KAFKA=kafka1:9002,kafka2:9002,kafka3:9002 kafka:zzz
    docker run -idt -P --name kafka3 -h kafka3 -e BROKER_ID=3 -e ZOO=zk1:2181,zk2:2181,zk3:2181 -e KAFKA=kafka1:9002,kafka2:9002,kafka3:9002 kafka:zzz

# 启动kafka(todo: 自动启动)
    nohup bin/kafka-server-start.sh /server.properties > /kafka/logs/run.log &

## 创建topic，生成及消费
    bin/kafka-topics.sh --create --zookeeper zk1:2181,zk2:2181,zk3:2181 --replication-factor 3 --partitions 6 --topic my-replicated-test
    bin/kafka-console-producer.sh --broker-list kafka1:9092,kafka2:9092,kafka3:9092 --topic my-replicated-test
    bin/kafka-console-consumer.sh --zookeeper zk1:2181,zk2:2181,zk3:2181 --topic my-replicated-test --from- beginning
