FROM jobscale/php-fpm

WORKDIR /var/www

COPY . html

RUN chown -R www-data. html && cd html && ./composer.phar install && cd -
