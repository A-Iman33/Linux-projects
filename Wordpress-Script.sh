#!/bin/bash
sudo yum install wget httpd php php-mysqlnd -y
sudo systemctl enable httpd
sudo systemctl start httpd
cd /var/www/html
sudo wget http://wordpress.org/latest.tar.gz
sudo tar zxvf latest.tar.gz
sudo sed -i 's|DocumentRoot "/var/www/html"|DocumentRoot "/var/www/html/wordpress"|' /etc/httpd/conf/httpd.conf
sudo chown -R apache:apache /var/www/html/wordpress
sudo chmod 755 /var/www/html/wordpress
sudo systemctl restart httpd
echo "complete"
