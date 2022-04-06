FROM trafex/php-nginx:latest

USER 175

COPY index.php /var/www/html/
COPY ./contents/* /var/www/html/contents/
COPY ./includes/* /var/www/html/includes/
COPY ./templates/* /var/www/html/templates/

COPY ./server-configs/nginx.conf  /etc/nginx/
COPY ./server-configs/fpm-pool.conf /etc/php8/php-fpm.d/www.conf
COPY ./server-configs/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 8080