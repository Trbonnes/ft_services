minikube start --vm-driver=virtualbox --cpus 5 --memory=5000mb
minikube addons enable ingress
minikube addons enable metrics-server
#MINIKUBE_IP=$(minikube ip)
#sed -i '' "s/##MINIKUBE_IP##/$MINIKUBE_IP/g" srcs/ftps/entrypoint
#sed -i '' "s/##MINIKUBE_IP##/$MINIKUBE_IP/g" srcs/wordpress/wordpress_dump.sql
eval $(minikube docker-env)
docker build -t custom-wordpress:2.3 srcs/mysql/wordpress
docker build -t custom-phpmyadmin:1.1 srcs/mysql/phpmyadmin
docker build -t custom-nginx:1.1 srcs/nginx
docker build -t custom-ftps:2.2 srcs/ftps
docker build -t custom-grafana:1.5 srcs/grafana
kubectl apply -k srcs/mysql
kubectl apply -k srcs/grafana
kubectl apply -k srcs/ftps
kubectl apply -k srcs/nginx
kubectl get services
kubectl get pods -n kube-system
kubectl get svc -n kube-system
kubectl get deployments -n kube-system
minikube ip
minikube service wordpress-service --url
minikube dashboard
curl -L -i 35.205.31.129
