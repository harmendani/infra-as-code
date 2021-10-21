#!/usr/bin/env bash

echo ">>> Installing MySQL Server"

    # Add repo for MySQL 
	sudo add-apt-repository 'deb http://archive.ubuntu.com/ubuntu focal universe'

	# Update Again
	sudo apt-get update

	# Change package
	mysql_package=mysql-server


# Install MySQL without password prompt
# Set username and password to 'root'
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"

# Install MySQL Server
# -qq implies -y --force-yes
sudo apt-get install -qq $mysql_package

sudo sed -i "s/bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf


    # adding grant privileges to mysql root user from everywhere
    # thx to http://stackoverflow.com/questions/7528967/how-to-grant-mysql-privileges-in-a-bash-script for this
    MYSQL=`which mysql`

    Q1="CREATE USER 'sammy'@'%' IDENTIFIED BY 'password';"
    Q2="FLUSH PRIVILEGES;"
    SQL="${Q1}${Q2}"
	

    $MYSQL -u root -p root -e "$SQL"

 sudo  service mysql restart


