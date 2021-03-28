# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/17 19:25:47 by wtaylor           #+#    #+#              #
#    Updated: 2021/03/28 16:42:43 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/bash
minikube start --vm-driver=virtualbox  --disk-size="10000mb" --memory="4000mb"

minikube addons enable metallb

eval $(minikube docker-env)
#eval $(minikube docker-env --unset)

docker login

docker build -t nginx srcs/nginx
docker build -t phpmyadmin ./srcs/phpmyadmin
docker build -t wordpress-img srcs/wordpress
docker build -t mysql-img srcs/mysql

kubectl apply -f srcs/nginx/nginx.yaml 
kubectl apply -f srcs/phpmyadmin/php.yaml
kubectl apply -f srcs/wordpress/wordpress.yaml
kubectl apply -f srcs/configmap.yaml