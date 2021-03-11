# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/11 20:10:09 by wtaylor           #+#    #+#              #
#    Updated: 2021/03/11 21:13:29 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

minikube start --vm-driver=virtualbox  --disk-size="10000mb" --memory="4000mb"

minikube addons enable metallb

kubectl apply -f ./srcs/lb.yaml

eval $(minikube docker-env)

docker build -t ft_nginx ./srcs/nginx

kubectl apply -f ./srcs/nginx/nginx.yaml