FROM serf:zzz

MAINTAINER ianwoolf<ianwoolf2@gmail.com>

# install openssh-server, vim and openjdk
#RUN apt-get update -y
RUN apt-get install -y vim
RUN apt-get install -y openjdk-7-jdk 

# move all configuration files into container
ADD files/* /usr/local/
ADD files/hadoop-2.6.2 /usr/local/hadoop

# set jave environment variable 
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64 
ENV PATH $PATH:$JAVA_HOME/bin

#configure ssh free key access
RUN ssh-keygen -t rsa -f ~/.ssh/id_rsa -P '' && \
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys && \
mv /usr/local/ssh_config ~/.ssh/config && \
sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

#install hadoop 2.30
RUN mv /usr/local/bashrc ~/.bashrc
RUN mv /usr/local/hadoop-env.sh /usr/local/hadoop/etc/hadoop/hadoop-env.sh 
