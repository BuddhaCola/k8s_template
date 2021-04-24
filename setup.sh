# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/17 19:25:47 by wtaylor           #+#    #+#              #
#    Updated: 2021/04/24 14:28:44 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/bash
minikube start --vm-driver=virtualbox  --disk-size="10000mb" --memory="4000mb"

minikube addons enable metrics-server
minikube addons enable metallb

eval $(minikube docker-env)

docker login

docker build -t nginx			srcs/nginx
docker build -t phpmyadmin		srcs/phpmyadmin
docker build -t wordpress-img	srcs/wordpress
docker build -t mysql-img		srcs/mysql
docker build -t grafana-img		srcs/grafana
docker build -t influxdb-img	srcs/influxdb
docker build -t ftps-img		srcs/ftps

kubectl apply -k srcs