FROM alpine:3.12

RUN apk update

RUN apk add openssl nginx php7-fpm php7-common php7-session php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom

RUN mkdir /run/nginx/

WORKDIR /var/www/

RUN wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz

RUN tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz

RUN	rm phpMyAdmin-5.0.2-all-languages.tar.gz && mv phpMyAdmin-5.0.2-all-languages phpmyadmin && chmod -R 777 /var/www/phpmyadmin

RUN openssl req -x509 -nodes -days 1 -newkey rsa:2048\
	-subj "/C=RU/ST=Tatarstan/L=Lololand/O=Totally trusted organization/OU=your mom!"\
	-keyout /etc/ssl/private/ft_server.key -out /etc/ssl/certs/ft_server.crt

COPY ./default.conf /etc/nginx/conf.d/default.conf

CMD php-fpm7 && nginx -g 'daemon off;'