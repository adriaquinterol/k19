cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/kdc.conf /var/kerberos/krb5kdc/kdc.conf
cp /opt/docker/kadm5.acl /var/kerberos/krb5kdc/kadm5.acl
kdb5_util create -s -P masterkey
kadmin.local -q "addprinc -pw superuser superuser"
kadmin.local -q "addprinc -pw kuser01 user01"
kadmin.local -q "addprinc -pw kuser02 user02"
kadmin.local -q "addprinc -pw kuser03 user03"
kadmin.local -q "addprinc -pw kuser04 user04"
kadmin.local -q "addprinc -pw kuser05 user05"
kadmin.local -q "addprinc -pw kuser06 user06"
kadmin.local -q "addprinc -randkey host/sshd.edt.org"