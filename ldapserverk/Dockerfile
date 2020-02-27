FROM fedora:24
RUN dnf -y update vi
RUN dnf -y install vim procps iputils iproute tree nmap mlocate man-db \
                   openldap openldap-clients openldap-servers
RUN mkdir /opt/docker
COPY  * /opt/docker/
COPY ldap.conf /etc/openldap/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
RUN /opt/docker/install.sh
WORKDIR /opt/docker 
EXPOSE 389 636
CMD "/opt/docker/startup.sh"
