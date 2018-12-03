FROM geerlingguy/php-apache:latest
RUN apt-get update && apt-get install -y php libapache2-mod-php php-cli php-mysql php-mcrypt php-zip php-ldap php-curl php-gd php-odbc php-pear php-xml php-xmlrpc php-mbstring php-snmp php-soap php-intl curl
ADD https://download.prestashop.com/download/releases/prestashop_1.7.4.4.zip /var/www/html
RUN cd /var/www/html && rm index.html && unzip prestashop_1.7.4.4.zip && rm prestashop_1.7.4.4.zip && chown -R 755 /var/www/html 
