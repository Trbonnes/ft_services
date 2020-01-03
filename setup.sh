minikube start --vm-driver=virtualbox --cpus 5 --memory=5000mb
minikube addons enable ingress
kubectl apply -k srcs
kubectl apply -f srcs/nginx.yaml
kubectl apply -f srcs/nginx_deployment_ingress.yaml
kubectl get services
minikube ip
minikube service wordpress-service --url
minikube dashboard
curl -L -i 35.205.31.129
