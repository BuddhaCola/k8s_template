# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/21 19:41:00 by wtaylor           #+#    #+#              #
#    Updated: 2021/04/13 14:24:43 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/sh
openrc default

# touch /run/openrc/softlevel

/etc/init.d/mariadb setup

sed -i "s|\[mysqld]|\[mysqld]\nskip-networking=false\nbind-address=0.0.0.0|g" /etc/my.cnf

sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf

sed -i "s|.*skip-networking.*|skip-networking=false|g" /etc/my.cnf.d/mariadb-server.cnf

openrc -s mariadb start

mysql < sql_init && rm sql_init

openrc -s mariadb stop

/usr/bin/mysqld_safe --datadir='/var/lib/mysql'