FROM fedora:27
LABEL author="@adriaquintero ASIX M11"
LABEL description="Host kerberos amb pam i ldap"
RUN dnf -y install krb5-workstation passwd authconfig pam_krb5 openldap-clients nss-pam-ldapd procps openssh-clients
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh /opt/docker/install.sh
WORKDIR /opt/docker
CMD "/opt/docker/startup.sh"
