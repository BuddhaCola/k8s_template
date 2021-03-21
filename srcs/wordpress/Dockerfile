FROM alpine:3.12

RUN apk update && apk add nginx

RUN apk add nginx wget

WORKDIR /var/www/

COPY ./srcs/wordpress/wp-config.php .

RUN	wget https://wordpress.org/latest.tar.gz