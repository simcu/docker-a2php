#!/bin/sh
sed -i "s/max_execution_time = 30/max_execution_time = 300/g" /etc/php/php.ini
sed -i "s/post_max_size = 8M/post_max_size = 100M/g" /etc/php/php.ini
sed -i "s/upload_max_filesize = 2M/upload_max_filesize = 100M/g" /etc/php/php.ini
sed -i "s/expose_php = On/expose_php = Off/g" /etc/php/php.ini
sed -i "s/\/run\/apache2\/httpd.pid/\/tmp\/httpd.pid/g" /etc/apache2/conf.d/mpm.conf
rm -rf /var/www/localhost
mv /tmp/install/run.sh /run.sh
chmod +x /run.sh
mv /tmp/install/httpd.conf /etc/apache2/httpd.conf