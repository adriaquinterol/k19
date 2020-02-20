FROM fedora:27
LABEL version="1.0"
LABEL author="@adriaquintero ASIX-M11"
RUN dnf -y install krb5-server krb5-workstation krb5-libs
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh /opt/docker/install.sh
WORKDIR /opt/docker
CMD bash /opt/docker/startup.sh
