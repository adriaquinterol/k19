#! /bin/bash
dnf -y install hostname
echo "hola bon dia $(hostname)" > /var/www/html/index.html
