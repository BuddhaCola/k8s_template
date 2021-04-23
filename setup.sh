# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtaylor <wtaylor@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/17 19:25:47 by wtaylor           #+#    #+#              #
#    Updated: 2021/04/23 19:11:14 by wtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/bash
minikube start --vm-driver=virtualbox  --disk-size="10000mb" --memory="4000mb"

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

# kubectl cp grafana-deployment-c554596b5-cw8xv:/etc/grafana/data/grafana.db grafana.db.

void    destroy_simplecommand_list(t_simple_command *simp_cmd)
{
    size_t i;
	
    if (simp_cmd != NULL)
    {
        free(simp_cmd->cmd);
        i = 0;
        while (simp_cmd->args[i])
            free(simp_cmd->args[i++]);
        free(simp_cmd->args);
        destroy_simplecommand_list(simp_cmd->next);
        free(simp_cmd);
    }
}