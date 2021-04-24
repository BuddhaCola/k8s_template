# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/19 20:49:56 by wtaylor           #+#    #+#              #
#    Updated: 2021/04/24 00:58:50 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12

RUN apk update && apk add mysql mysql-client openrc

COPY ./setup.sh .

COPY ./Wordpress.sql .

RUN chmod +x ./setup.sh

CMD sh ./setup.sh