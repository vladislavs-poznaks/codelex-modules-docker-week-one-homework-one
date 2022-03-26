FROM alpine:latest

# Adding labels
LABEL version="Docker-week-one-homework-one"
LABEL author="Vladislavs Poznaks"

#Updating packages
RUN apk update && apk upgrade

#Adding curl
RUN apk --no-cache add curl

# Adding php with necessary extensions for Composer & PHPUnit
RUN apk add php7 php7-xml php7-dom php7-json php7-tokenizer php7-xmlwriter php7-phar php7-mbstring php7-openssl

# Adding Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

# Copy source code
COPY ./ /var/www/html

# Set working directory
WORKDIR /var/www/html

# Install dependencies
RUN composer install

# Run scripts
CMD sh start.sh