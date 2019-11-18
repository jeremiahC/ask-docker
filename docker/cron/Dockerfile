FROM php:7.1-fpm

WORKDIR /var/www/html

RUN apt-get update
RUN apt-get install -y \
        cron

# Create the log file
RUN touch /var/log/schedule.log
RUN chmod 0777 /var/log/schedule.log

# Add crontab file in the cron directory
ADD scheduler /etc/cron.d/scheduler

# Run the cron
RUN crontab /etc/cron.d/scheduler
CMD ["cron", "-f"]
