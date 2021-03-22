# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/21 19:41:00 by wtaylor           #+#    #+#              #
#    Updated: 2021/03/22 15:28:54 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/sh
openrc

touch /run/openrc/softlevel

/etc/init.d/mariadb setup

openrc -s mariadb start

mysql < sql_init && rm sql_init && openrc -s mariadb stop

 cd '/usr' ; /usr/bin/mysqld_safe --datadir='/var/lib/mysql'