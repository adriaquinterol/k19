#! /bin/bash

groupadd local01
groupadd kusers
useradd -g users -G local01 local01
useradd -g users -G local01 local02
useradd -g users -G local01 local03
useradd -g users -G kusers user01
useradd -g users -G kusers user02
useradd -g users -G kusers user03
echo "local01" | passwd --stdin local01
echo "local02" | passwd --stdin local02
echo "local03" | passwd --stdin local03

cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/ldap.conf /etc/openldap/ldap.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
cp /opt/docker/sshd_config /etc/ssh/sshd_config
cp /opt/docker/ssh_config /etc/ssh/ssh_config

echo "session optional pam_mkhomedir.so" >> /etc/pam.d/system-auth
bash /opt/docker/auth.sh
# la copia de krb5.conf va despres del auth.sh per evitar el problema
# de la línia de configuració del default cache
cp /opt/docker/krb5.conf /etc/krb5.conf
/usr/bin/ssh-keygen -A
kadmin -p pau -w kpau -q "ktadd -k /etc/krb5.keytab host/sshd.edt.org"
