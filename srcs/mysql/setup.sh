# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/21 19:41:00 by wtaylor           #+#    #+#              #
#    Updated: 2021/04/09 19:30:33 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/sh
openrc default

touch /run/openrc/softlevel

/etc/init.d/mariadb setup

# cp ./my.cnf /etc/

openrc -s mariadb start

mysql < sql_init && rm sql_init && openrc -s mariadb stop

/usr/bin/mysqld_safe --datadir='/var/lib/mysql'