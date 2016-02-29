FROM php:7-fpm

RUN requirements="zlib1g-dev libicu-dev git curl vim" \
    && apt-get update && apt-get install -y $requirements && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install intl \
    && docker-php-ext-install zip \
    && apt-get purge --auto-remove -y

RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/bin/composer

ADD . /app
WORKDIR /app

RUN composer install -o

RUN usermod -u 1000 www-data
