#!/bin/sh

# Install and configure PHP Xdebug
# pecl install xdebug && \
# docker-php-ext-enable xdebug && \
# echo "xdebug.mode = debug" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && \
# echo "xdebug.start_with_request = trigger" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && \
# echo "chdir = /app/php" >> /usr/local/etc/php-fpm.d/www.conf && \
# kill -USR2 1

# Install git
# apt-get update && apt-get install -y git

# Add colors for root shell
cp /etc/skel/.bashrc /root/