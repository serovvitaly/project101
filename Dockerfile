FROM php:fpm-alpine

WORKDIR /app

RUN apk add --no-cache git \
    && apk add --no-cache zlib-dev && docker-php-ext-install zip \
    && wget https://getcomposer.org/composer.phar \
    && mv composer.phar /usr/local/bin/composer && chmod a+x /usr/local/bin/composer \
    && composer create-project symfony/skeleton ./