# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/23 00:30:26 by wtaylor           #+#    #+#              #
#    Updated: 2021/04/23 00:51:18 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:3.12

RUN		apk update && apk add vsftpd openssl

RUN		openssl req -x509 -nodes -days 1 -newkey rsa:2048 \
		-subj "/C=RU/ST=Tatarstan/L=Lololand/O=Totally trusted organization/OU=your mom!" \
		-keyout /etc/ssl/private/ft_services.key -out /etc/ssl/certs/ft_services.crt

RUN		echo 'root:root' | chpasswd

CMD		vsftpd