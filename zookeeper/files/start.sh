#!/bin/bash
echo "root" | passwd –stdin root
echo "root:root"|chpasswd
sed -i '/^PermitRootLogin/s/without-password/yes/g' /etc/ssh/sshd_config
/etc/init.d/ssh restart
/start-ssh-serf.sh

cp /zoo/conf/zoo_sample.cfg /zoo/conf/zoo.cfg
mkdir -p /var/lib/zookeeper
/zoo/bin/zkServer.sh start-foreground

/bin/bash
