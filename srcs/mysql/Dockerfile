# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/19 20:49:56 by wtaylor           #+#    #+#              #
#    Updated: 2021/04/16 23:06:46 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12

RUN apk update && apk add mysql mysql-client openrc

# rc-status

COPY ./setup.sh .

COPY ./sql_init .
COPY ./mysql.sql .

RUN chmod +x ./setup.sh

# RUN sh ./setup.sh
# CMD openrc -s /usr/bin/mysqld_safe --datadir='/var/lib/mysql'
ENTRYPOINT [ "sh", "./setup.sh" ]