FROM fedora:27
RUN dnf -y install krb5-workstation passwd authconfig pam_krb5 openldap-clients nss-pam-ldapd \
                   procps pam_mount openssh-clients openssh-server cifs-utils
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh /opt/docker/install.sh
WORKDIR /opt/docker
CMD "/opt/docker/startup.sh"
