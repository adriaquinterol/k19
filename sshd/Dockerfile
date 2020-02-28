FROM fedora:27
RUN dnf -y install openssh-clients openssh-server krb5-workstation passwd procps
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh /opt/docker/install.sh
WORKDIR /opt/docker
CMD "/opt/docker/startup.sh"
