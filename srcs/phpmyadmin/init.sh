# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    init.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/18 22:36:15 by wtaylor           #+#    #+#              #
#    Updated: 2021/03/18 22:57:19 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/sh
openssl req -x509 -nodes -days 1 -newkey rsa:2048\
	-subj "/C=RU/ST=Tatarstan/L=Lololand/O=Totally trusted organization/OU=your mom!"\
	-keyout /etc/ssl/private/ft_server.key -out /etc/ssl/certs/ft_server.crt