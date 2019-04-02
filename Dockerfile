FROM php:7.3-alpine

MAINTAINER Ferdinand Frank <f.frank@fupa.net>

# Update packages
RUN apt-get update

# Install dependencies
RUN apt-get install -qq curl rsync openssh

# Clear out the local repository of retrieved package files
RUN apt-get clean

# Install Composer
RUN curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Laravel Envoy
RUN composer global require "laravel/envoy=~1.0"
