FROM sshd:file
MAINTAINER btw515wolf2@gmail.com

RUN echo "deb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest trusty main" >> /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y --force-yes salt-master
RUN apt-get install -y --force-yes salt-minion
RUN apt-get install -y --force-yes salt-ssh
RUN apt-get install -y --force-yes salt-syndic
RUN apt-get install -y --force-yes salt-cloud

EXPOSE 4505
EXPOSE 4506
EXPOSE 22

CMD ["/run.sh"]
