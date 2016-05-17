FROM alpine
COPY files /tmp/install
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
		apk add --update php-curl php-pdo php-pdo_mysql php-mcrypt php-openssl php-zip php-xml sqlite php-apache2 php-mysql \
		php-xmlrpc php-pear php-sockets php-gettext php-iconv php-pdo_pgsql php-pdo_sqlite php-zlib php-redis php-mysqli \
		php-bz2 php-json php-dom php-phar php-ctype php-gd php-bcmath php-memcache php-soap apache2 php && \
        sh /tmp/install/config.sh && rm -rf /tmp/install && rm -rf /var/cache/apk/*
CMD "/run.sh"