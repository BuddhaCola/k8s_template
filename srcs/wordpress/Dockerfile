# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/22 13:27:48 by wtaylor           #+#    #+#              #
#    Updated: 2021/04/23 23:18:13 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:3.12

RUN		apk update

RUN		apk add openssl nginx supervisor \ 
		php7-fpm php7-common php7-session php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom

RUN		mkdir /run/nginx/

WORKDIR	/var/www/

RUN		wget https://wordpress.org/latest.tar.gz && tar -xf latest.tar.gz && rm latest.tar.gz

COPY	./wp-config.php ./wordpress

COPY	./default.conf /etc/nginx/conf.d/default.conf

COPY	supervisor_conf.ini /etc/supervisor.d/

CMD		supervisord