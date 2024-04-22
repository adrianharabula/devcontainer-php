ARG VARIANT=8.3-fpm
FROM php:${VARIANT} AS php

# Update php-fpm www folder
RUN echo "chdir = /app/php" >> /usr/local/etc/php-fpm.d/www.conf

FROM php AS php-xdebug
ARG USERNAME=nonroot
ARG USER_UID=1000
ARG USER_GID=1000

# Install PHP Xdebug
RUN pecl install xdebug && docker-php-ext-enable xdebug && \
echo "xdebug.mode = debug" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && \
echo "xdebug.start_with_request = trigger" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# Install git
RUN apt-get update && apt-get install -y git

# Create the nonroot user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd -s /bin/bash --uid $USER_UID --gid $USER_GID -m $USERNAME \
    #
    # [Optional] Add sudo support. Omit if you don't need to install software after connecting.
    && apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# ********************************************************
# * Anything else you want to do like clean up goes here *
# ********************************************************

# [Optional] Set the default user. Omit if you want to keep the default as root.
# USER $USERNAME
