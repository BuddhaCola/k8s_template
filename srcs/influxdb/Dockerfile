# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/22 13:16:10 by wtaylor           #+#    #+#              #
#    Updated: 2021/04/23 16:10:01 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:3.12

RUN		apk update && apk add libc6-compat supervisor influxdb

RUN 	wget https://dl.influxdata.com/telegraf/releases/telegraf-1.18.1_linux_amd64.tar.gz &&\
		tar xf telegraf-1.18.1_linux_amd64.tar.gz --strip-components 2 && rm telegraf-1.18.1_linux_amd64.tar.gz

COPY	supervisor_conf.ini /etc/supervisor.d/

RUN		./usr/bin/telegraf -sample-config --input-filter docker --output-filter influxdb > /etc/telegraf/telegraf.conf

ENTRYPOINT [ "supervisord" ]