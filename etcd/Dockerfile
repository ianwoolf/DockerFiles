FROM ubantu:zzz
MAINTAINER waitfish from dockerpool.com(btw515wolf2@gmail.com)
#RUN service ssh start
RUN \
        wget https://github.com/coreos/etcd/releases/download/v2.2.3/etcd-v2.2.3-linux-amd64.tar.gz && \
        tar -zxvf etcd-v2.2.3-linux-amd64.tar.gz && \
        cd etcd-v2.2.3-linux-amd64 && \
        cp etcd* /bin/. && \
        apt-get update
    
RUN mkdir -p /data/etcd/

ENV AUTH yes

# Add run scripts
ADD run.sh /run.sh
RUN chmod 755 /*.sh

EXPOSE 22 2379 2380

CMD ["/run.sh"]
