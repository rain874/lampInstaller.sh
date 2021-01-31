#!/bin/sh
# apache
apt update 
apt install apache2 
apt update
# php8
apt install -y curl wget gnupg2 ca-certificates lsb-release apt-transport-https
apt update 
wget https://packages.sury.org/php/apt.gpg
apt-key add apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php8.list
apt update
apt install -y php8.0 php8.0-cli php8.0-common
update-alternatives --set php /usr/bin/php8.0
php -v
#mariadb
apt update
apt install mariadb-server
mysql_secure_installation
