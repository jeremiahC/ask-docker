#!/bin/bash

echo "Calculating Sales"

/usr/local/bin/php /var/www/html/ask-publishing/artisan sales:monthly &
/usr/local/bin/php /var/www/html/ask-publishing/artisan sales:fill-gap

echo "Calculation Done"
