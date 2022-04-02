FROM alpine:latest

# Adding labels
LABEL version="Docker-week-one-homework-one-base"
LABEL author="Vladislavs Poznaks"

#Updating packages
RUN apk update && apk upgrade

# Adding bash
RUN apk add bash

#Adding curl
RUN apk add curl

# Adding php with necessary extensions for Composer & PHPUnit
RUN apk add php8 php8-xml php8-dom php8-json php8-tokenizer php8-xmlwriter php8-phar php8-mbstring php8-openssl
RUN ln -s /usr/bin/php8 /usr/bin/php

# Adding Composer
RUN curl -s https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

# Copy source code
COPY .. /var/www/html

# Set working directory
WORKDIR /var/www/html

# Install dependencies
RUN composer install

# Add optional arguments
CMD ["-pen"]

# Run script
ENTRYPOINT ["php", "index.php"]