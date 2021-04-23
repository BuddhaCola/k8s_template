# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/21 20:22:15 by wtaylor           #+#    #+#              #
#    Updated: 2021/04/23 16:24:14 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		alpine:3.12

RUN			apk update && apk add libc6-compat

WORKDIR		/etc/grafana/

RUN			wget https://dl.grafana.com/oss/release/grafana-7.5.4.linux-amd64.tar.gz &&\
			tar -zxvf grafana-7.5.4.linux-amd64.tar.gz --strip-components 1 && \
			rm grafana-7.5.4.linux-amd64.tar.gz

COPY		entrypoint.sh	.

COPY		grafana.db		/etc/grafana/data/

CMD			./bin/grafana-server