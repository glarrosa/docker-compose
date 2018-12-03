FROM geerlingguy/php-apache:latest
RUN apt-get update && apt-get install wget
ADD https://download.prestashop.com/download/releases/prestashop_1.7.2.1.zip /var/www/html
RUN cd /var/www/html && wget https://download.prestashop.com/download/releases/prestashop_1.7.2.1.zip && rm index.html && unzip prestashop_1.7.2.1.zip && rm prestashop_1.7.2.1.zip && chown -R 755 /var/www/html 
