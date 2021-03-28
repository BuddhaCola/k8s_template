# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/19 20:49:56 by wtaylor           #+#    #+#              #
#    Updated: 2021/03/28 20:17:04 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12

RUN apk update && apk add mysql mysql-client openrc

COPY ./setup.sh .

COPY ./sql_init .

RUN chmod +x ./setup.sh
# RUN sh ./setup.sh

ENTRYPOINT [ "sh", "./setup.sh" ]