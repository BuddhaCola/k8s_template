# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/19 20:49:56 by wtaylor           #+#    #+#              #
#    Updated: 2021/04/10 15:15:47 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12

RUN apk update && apk add mysql mysql-client openrc

COPY ./setup.sh .

COPY ./sql_init .

RUN chmod +x ./setup.sh

# COPY ./my.cnf /etc/my.cnf

# RUN sh ./setup.sh

# ENTRYPOINT [ "sh"]
ENTRYPOINT [ "sh", "./setup.sh" ]