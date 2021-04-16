# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/17 18:52:16 by wtaylor           #+#    #+#              #
#    Updated: 2021/04/16 20:09:17 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12

RUN apk update && apk add nginx openssl

COPY default.conf /etc/nginx/conf.d/

COPY setup.sh .

RUN mkdir /run/nginx/

RUN sh setup.sh

CMD nginx -g 'daemon off;'