FROM alpine:3.12

RUN apk update

RUN apk add nginx wget

WORKDIR /var/www/

RUN	wget https://wordpress.org/latest.tar.gz && tar -xf latest.tar.gz && rm latest.tar.gz

COPY ./srcs/wordpress/wp-config.php .