FROM centos

MAINTAINER Jed Record <erecord@lenovo.com>

RUN yum update-minimal --security -y && \
  yum install -y \
  bind-utils \
  curl \
  dropwatch \
  nano \
  net-tools \
  nmap \
  strace \
  sysstat \
  tcpdump \
  tcptraceroute \
  telnet \
  tmux \
  traceroute \
  vim \
  wireshark \
  wget \
  && yum clean all && rm -rf /var/cache/yum /tmp/* /var/tmp/*

RUN curl -s https://jedrecord.com/software/sysinfo/latest -o /usr/bin/sysinfo \
  && chmod 755 /usr/bin/sysinfo

CMD [ "/bin/bash" ]
