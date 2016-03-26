FROM java:zzz
MAINTAINER ian woolf <btw515wolf2@gmail.com> 

ADD http://ftp.nluug.nl/internet/apache/zookeeper/stable/zookeeper-3.4.6.tar.gz /zookeeper.tar.gz

RUN mkdir -p zoo && \
  cd zoo && \
  tar xvfz ../zookeeper.tar.gz --strip-components=1 && \
  rm /zookeeper.tar.gz

ADD start.sh /start.sh
RUN chmod 755 /start.sh
EXPOSE 22 2888 3888 2181

#CMD ["/run.sh"]
CMD ["/start.sh"]
