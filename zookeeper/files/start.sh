#!/bin/bash
echo "root" | passwd –stdin root
echo "root:root"|chpasswd
sed -i '/^PermitRootLogin/s/without-password/yes/g' /etc/ssh/sshd_config
/etc/init.d/ssh restart
/start-ssh-serf.sh

cp /zoo/conf/zoo_sample.cfg /zoo/conf/zoo.cfg
mkdir -p /var/lib/zookeeper
mkdir -p /data/zookeeper

echo "${Id}" >> /data/zookeeper/myid


oldIFS=$IFS
#自定义分隔符
IFS=,
for item in ${Zks}
do
    echo "server.${item}:2888:3888"|sed 's/-/=/g' >> /zoo/conf/zoo.cfg
done
IFS=$oldIFS
#/zoo/bin/zkServer.sh start-foreground

/bin/bash
