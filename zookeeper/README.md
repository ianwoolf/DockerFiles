## start cluster:

    docker run -idt --name zk1 -h zk1 -e Id=1 -e Zks=1-zk1,2-zk2,3-zk3 zk:zzz
    docker run -idt --name zk2 -h zk2 -e Id=2 -e Zks=1-zk1,2-zk2,3-zk3 zk:zzz
    docker run -idt --name zk3 -h zk3 -e Id=3 -e Zks=1-zk1,2-zk2,3-zk3 zk:zzz
