FROM sshd:my
MAINTAINER waitfish from dockerpool.com(btw515wolf2@gmail.com)
#RUN service ssh start
RUN \
        wget https://github.com/coreos/etcd/releases/download/v0.4.6/etcd-v0.4.6-linux-amd64.tar.gz && \
        tar -zxvf etcd-v0.4.6-linux-amd64.tar.gz && \
        cd etcd-v0.4.6-linux-amd64 && \
        cp etcd* /bin/. && \
        apt-get update
    
RUN mkdir -p /data/etcd/

ENV AUTH yes

# Add run scripts
ADD run.sh /run.sh
RUN chmod 755 /*.sh

EXPOSE 22 4001 7001

CMD ["/run.sh"]
