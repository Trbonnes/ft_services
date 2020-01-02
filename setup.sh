minikube start --vm-driver=virtualbox
minikube addons enable ingress
kubectl create secret generic mysql-secrets --from-literal=rootpw=secretpw
kubectl get secrets
kubectl create -f srcs/mysql_volume.yaml
kubectl create -f srcs/mysql.yaml
kubectl get po
kubectl get pv
kubectl create -f srcs/wordpress.yaml
kubectl get po
kubectl create -f srcs/nginx.yaml
kubectl get services
minikube dashboard
curl -L -i 35.205.31.129
