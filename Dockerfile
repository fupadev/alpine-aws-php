FROM php:7.3-alpine

MAINTAINER Ferdinand Frank <f.frank@fupa.net>

# Update packages
RUN apk update

# Install dependencies
RUN apk add curl rsync openssh

# Install Composer
RUN curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Laravel Envoy
RUN composer global require "laravel/envoy=~1.0"
