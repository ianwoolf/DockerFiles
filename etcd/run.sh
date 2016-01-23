#!/bin/bash
echo "root" | passwd –stdin root
echo "root:root"|chpasswd
sed -i '/^PermitRootLogin/s/without-password/yes/g' /etc/ssh/sshd_config
/etc/init.d/ssh restart
/bin/etcd -data-dir=/data/etcd -name=`hostname`
/bin/bash
