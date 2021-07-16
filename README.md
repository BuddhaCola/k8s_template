# wtf_service
**Kubernetes administration project**\
A whole Kubernetes cluster that is running inside [Minukube](https://minikube.sigs.k8s.io/docs/) virtual machine with my own Docker images, YAML files and config files for every service used.\
It consists of Docker conteiners for every service, including Wordpress site working in NGINX-driven server, MariaDB database and Phpmyadmin to manage the thing.\
Also there's [Grafana](https://grafana.com/grafana/) visual dashboard service, showing metrics collected from every container by [Telegraf](https://www.influxdata.com/time-series-platform/telegraf/) agent into [InfluxDB](https://www.influxdata.com/products/influxdb/) database and showing CPU and memory load from every of them.\
As a bonus, there's a ftps server.\
Every container is based on Alpine Linux, the most minimalistic Linux distribution so you got to figure out a way to make things work that are usually built-in any vanilla Linux.\
\
**Requirements**\
[Docker Desktop](https://www.docker.com/products/docker-desktop) installaed\
[Kubernetes](https://kubernetes.io/releases/download/) installaed\
[Kubectl](https://kubernetes.io/docs/reference/kubectl/kubectl/) installaed\
[Minikube](https://minikube.sigs.k8s.io/docs/start/) installaed\
\
\
**Usage**
Git clone the repository by entering\
$ git clone https://github.com/BuddhaCola/wtf_service.git \
cd into it\
$ cd wtf_service\
Run setup.sh script by entering\
$ bash setup.sh\
After Minikube started the cluster and Docker made all the containers you can open Dashboard by typing into console\
$ minikube dashboard\
If all done right, you should be able to open main page by opening http://192.168.99.100/ in your browser\