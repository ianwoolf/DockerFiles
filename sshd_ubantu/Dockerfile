FROM ubuntu:latest
#提供一些作者的信息
MAINTAINER btw515wolf2@gmail.com
#下面开始运行命令,此处更改ubuntu的源为国内163的源
RUN echo "deb http://mirrors.163.com/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/ubuntu/ trusty-proposed main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN apt-get update

#安装 ssh 服务
RUN apt-get install -y curl
RUN apt-get install -y openssh-server
#RUN apt-get install -y language-pack-en
RUN apt-get install -y supervisor
RUN apt-get install -y screen
RUN mkdir -p /var/run/sshd
RUN mkdir -p /root/.ssh
RUN export LANGUAGE="en_US.UTF-8"
RUN export LANG=en_US:zh_CN.UTF-8
RUN export LC_ALL=C 
#取消pam限制
RUN sed -ri 's/session    required     pam_loginuid.so/#session    required     pam_loginuid.so/g' /etc/pam.d/sshd

#复制配置文件到相应位置,并赋予脚本可执行权限
ADD authorized_keys /root/.ssh/authorized_keys
ADD run.sh /run.sh
ADD functions /etc/rc.d/init.d/functions
RUN chmod 755 /run.sh
RUN chmod 755 /etc/rc.d/init.d/functions
#开放端口
EXPOSE 22

#设置自启动命令
#CMD ["/etc/init.d/ssh -D"]
CMD ["/run.sh"]
#CMD ["service ssh start"]
