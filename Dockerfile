FROM php:7.1-fpm

RUN apt-get update && apt-get install -y \
                libfreetype6-dev \
                libjpeg62-turbo-dev \
                libmcrypt-dev \
                libpng12-dev \
            && docker-php-ext-install mcrypt \
            && docker-php-ext-install mysqli \
            && docker-php-ext-install pdo \
            && docker-php-ext-install pdo_mysql \
            && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
            && docker-php-ext-install gd \
