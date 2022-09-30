FROM php:8.0-apache
COPY . /var/www/html
RUN apt-get update && \ 
    apt-get -y install libconfig-crontab-perl && \
    echo "0 1 * * 1 /var/www/html/script/backup.sh" | crontab 
    
