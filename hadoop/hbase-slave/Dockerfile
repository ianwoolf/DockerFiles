FROM hadoop:slave

MAINTAINER ianwoolf <btw515wolf2@gmail.com>

# move all confugration files into container
ADD files/hbase-1.2.0 /usr/local/hbase

ENV HABASE_INSTALL /usr/local/hbase

RUN mkdir -p /root/hbase 

EXPOSE 22 7373 7946 9000 50010 50020 50070 50075 50090 50475 8030 8031 8032 8033 8040 8042 8060 8088 50060 9090 8080 60010

CMD '/root/start-ssh-serf.sh'; 'bash'
