# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/17 19:25:47 by wtaylor           #+#    #+#              #
#    Updated: 2021/03/19 15:12:23 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/bash
minikube start --vm-driver=virtualbox  --disk-size="10000mb" --memory="4000mb"

minikube addons enable metallb

kubectl apply -f srcs/configmap.yaml

eval $(minikube docker-env)

docker login

docker build -t nginx srcs/nginx

kubectl apply -f srcs/nginx/nginx.yaml 

docker build -t php-img ./srcs/phpmyadmin

kubectl apply -f srcs/phpmyadmin/php.yaml
