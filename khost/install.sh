#! /bin/bash

cp /opt/docker/krb5.conf /etc/krb5.conf
useradd local01
useradd local02
useradd user01
useradd user02
useradd user03
useradd user04
useradd user05
useradd user06
echo "local01" | passwd --stdin local01
echo "local02" | passwd --stdin local02

