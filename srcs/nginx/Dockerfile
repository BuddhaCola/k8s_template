# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/17 18:52:16 by wtaylor           #+#    #+#              #
#    Updated: 2021/04/24 00:01:25 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12

RUN apk update && apk add nginx openssl

COPY default.conf /etc/nginx/conf.d/

COPY generate_ssl.sh .

COPY index.html /var/www/

RUN mkdir /run/nginx/

RUN sh ./generate_ssl.sh

CMD nginx -g 'daemon off;'