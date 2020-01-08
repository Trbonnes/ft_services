minikube start --vm-driver=virtualbox --cpus 5 --memory=5000mb
minikube addons enable ingress
kubectl apply -k srcs/mysql
kubectl apply -k srcs/grafana
kubectl apply -f srcs/nginx/nginx.yaml
kubectl apply -f srcs/nginx/nginx_deployment_ingress.yaml
kubectl get services
kubectl get pods -n kube-system
kubectl get svc -n kube-system
kubectl get deployments -n kube-system
minikube ip
minikube service wordpress-service --url
minikube dashboard
curl -L -i 35.205.31.129
