minikube start --vm-driver=virtualbox --cpus 5 --memory=5000mb
minikube addons enable ingress
minikube addons enable heapster
kubectl apply -k srcs/mysql
#kubectl apply -k srcs/influxdb
kubectl apply -k srcs/grafana
#kubectl create configmap grafana-config \
#  --from-file=influxdb-datasource.yml=srcs/influxdb/influxdb-datasource.yml \
#  --from-file=grafana-dashboard-provider.yml=srcs/influxdb/grafana-dashboard-provider.yml \
#  --from-file=grafana_dashboard.json=srcs/influxdb/grafana_dashboard.json
kubectl apply -f srcs/nginx/nginx.yaml
kubectl apply -f srcs/nginx/nginx_deployment_ingress.yaml
kubectl get services
minikube ip
minikube service wordpress-service --url
minikube dashboard
curl -L -i 35.205.31.129
