FROM centos:centos7.4.1708
#RUN curl -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo && \
RUN    yum -y install iproute openssh-server vim wget bash-completion lrzsz nmap  nc  tree  htop iftop  net-tools && \
    echo "12345" | passwd --stdin root && \
    ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key && \
    ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key && \
    yum clean all
    
ADD init.sh /init.sh
CMD ["/bin/bash","/init.sh"]
CMD ["/usr/sbin/init"]
