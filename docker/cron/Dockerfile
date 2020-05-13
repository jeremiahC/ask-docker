FROM php:7.2.19-fpm

WORKDIR /var/www/html

RUN apt-get update
RUN apt-get install -y \
        cron

# Add files
ADD run.sh /run.sh
ADD entrypoint.sh /entrypoint.sh
 
RUN chmod +x /run.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
