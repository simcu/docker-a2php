FROM alpine
COPY files /tmp/install
RUN apk add --update php-curl php-pdo php-pdo_mysql php-mcrypt php-openssl php-zip php-xml sqlite php-apache2 \
			php-xmlrpc php-pear php-sockets php-gettext php-iconv php-pdo_pgsql php-pdo_sqlite php-zlib php-mysqli \
			php-bz2 php-json php-dom php-phar php-ctype php-gd php-bcmath php-memcache php-soap apache2 php && \
            sh /tmp/install/config.sh && rm -rf /tmp/install && rm -rf /var/cache/apk/*
CMD "/run.sh"