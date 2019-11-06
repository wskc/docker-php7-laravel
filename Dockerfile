FROM php:7.2-fpm

RUN apt-get update && apt-get install -y \
                libfreetype6-dev \
                libjpeg62-turbo-dev \
                libmcrypt-dev \
                libpng-dev \
            && pecl install mcrypt-1.0.1 \
        && docker-php-ext-enable mcrypt \
            && docker-php-ext-install mysqli \
            && docker-php-ext-install pdo \
            && docker-php-ext-install pdo_mysql \
            && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
            && docker-php-ext-install gd \

