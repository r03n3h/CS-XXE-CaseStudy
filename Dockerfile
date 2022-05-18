FROM php:7.3-apache
COPY xxe.php /var/www/html/xxe.php

CMD ["php", "/var/www/html/xxe.php"]
