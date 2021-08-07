FROM php:5.5-apache
ADD nexusphp.tar.gz /var/www/html/
RUN apt-get update && apt-get install -y libmemcached-dev zlib1g-dev libpng-dev libjpeg-dev \
    && pecl install memcache-2.2.7 \
    && docker-php-ext-install mysql gd \
    && docker-php-ext-enable memcache
ADD nexus.ini "$PHP_INI_DIR/conf.d/nexus.ini"