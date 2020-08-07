FROM jobscale/php-fpm
WORKDIR /var/www
COPY . html
RUN chown -R www-data. public/data public/conf
