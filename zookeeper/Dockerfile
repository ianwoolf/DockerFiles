FROM hadoop:base
MAINTAINER ian woolf <btw515wolf2@gmail.com> 

#ADD http://www-eu.apache.org/dist/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz /files/zookeeper.tar.gz
ADD files/zookeeper-3.4.8 /zoo

ADD files/start.sh /start.sh
ADD files/start-ssh-serf.sh /start-serf.sh
RUN chmod 755 /start.sh
RUN chmod 755 /start-serf.sh

#CMD ["/run.sh"]
EXPOSE 22 2888 3888 2181

CMD ["/start.sh"]
