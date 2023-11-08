##### Instant-cooking Kubernetes cluster template for hosting a WordPress application

For local run, can be launched inside VirtualBox using [Minikube](https://minikube.sigs.k8s.io/docs/start/)

Includes containers for
- [Wordpress](https://wordpress.org/)
- [Nginx](https://www.nginx.com/)
- Database (default MySQL)
- [Grafana](https://grafana.com/)
- [InfluxDB](https://www.influxdata.com/) (for Grafana)
- Phpmyadmin
- ftps server
\
\
**Requirements**\
[Docker Desktop](https://www.docker.com/products/docker-desktop) installaed\
[Kubernetes](https://kubernetes.io/releases/download/) installaed\
[Kubectl](https://kubernetes.io/docs/reference/kubectl/kubectl/) installaed\
[Minikube](https://minikube.sigs.k8s.io/docs/start/) installaed\
\
**Usage**\
Git clone the repository by entering
```
git clone https://github.com/BuddhaCola/wtf_service.git
```
cd into it
```
cd wtf_service
```
Run setup.sh script by entering
```
bash setup.sh
```
After Minikube started the cluster and Docker finished building containers you can open Dashboard by typing into console
```
minikube dashboard
```
If all done right, you should be able to open main page by opening http://192.168.99.100/ in your browser\
\
\
<img width="1203" alt="Screenshot 2021-09-23 at 13 33 54" src="https://user-images.githubusercontent.com/63592194/134493702-a4b39b57-bff8-49d0-82d8-3b8a8ead5c03.png">
